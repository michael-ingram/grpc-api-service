class GraphqlController < ApplicationController
  def execute_public
    handle_execute_errors do
      context = {
        # Query context goes here, for example:
        # current_user: current_user,
      }
      result = PublicSchema.execute(
        params[:query],
        operation_name: params[:operationName],
        variables: prepare_variables(params[:variables]),
        context: context
      )
      render json: result
    end
  end

  def execute_authenticated
    handle_execute_errors do
      variables = prepare_variables(params[:variables])
      query = params[:query]
      operation_name = params[:operationName]

      context = {
        employee_number: get_employee_number
      }
      result = AuthenticatedSchema.execute(
        params[:query],
        operation_name: params[:operationName],
        variables: prepare_variables(params[:variables]),
        context: context
      )
      render json: result
    end
  end

  def execute_internal
    handle_execute_errors do
      variables = prepare_variables(params[:variables])
      query = params[:query]
      operation_name = params[:operationName]

      result = InternalSchema.execute(query, variables: variables, operation_name: operation_name)
      render json: result
    end
  end

  private

  def get_employee_number
    decoded_token = decode_token
    return '' unless decoded_token

    decoded_token['employee_number']
  end

  def decode_token
    begin
      JWT.decode(jwt_token, nil, false, {algorithm: 'RS256'})[0]
    rescue JWT::ExpiredSignature, JWT::DecodeError => e
      # QueenBee::ApplicationMonitor.report_error(
      #   description: "Invalid token error, unable to decode token!",
      #   error: e
      # )
    end
  end

  def jwt_token
    request.headers['Authorization'].split(' ').last
  end

  # Handle variables in form data, JSON body, or a blank value
  def prepare_variables(variables_param)
    case variables_param
    when String
      if variables_param.present?
        JSON.parse(variables_param) || {}
      else
        {}
      end
    when Hash
      variables_param
    when ActionController::Parameters
      variables_param.to_unsafe_hash # GraphQL-Ruby will validate name and type of incoming variables.
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{variables_param}"
    end
  end

  def handle_execute_errors
    begin
      yield
    rescue StandardError => e
      binding.pry
      # QueenBee::ApplicationMonitor.report_error(
      #   description: "Failed to execute query",
      #   error: e
      # )
      render json: {error_code: 'NB0', error_message: 'Unknown API Service Error'}
    end
  end
end
