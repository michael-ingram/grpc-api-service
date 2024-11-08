require 'flight_pb'              # For the message classes (e.g., FlightByIdRequest, FlightByIdResponse)
require 'flight_services_pb'     # For the gRPC service and stub (FlightService)

class FlightClient
  def initialize
    @stub = Flight::FlightService::Stub.new('localhost:50051', :this_channel_is_insecure)
  end

  def flight_by_id(flight_id)
    request = Flight::FlightByIdRequest.new(unique_id: flight_id)
    @stub.flight_by_id(request)
  rescue GRPC::NotFound => e
    puts "Flight not found: #{e.message}"
    nil
  rescue StandardError => e
    puts "Error calling Navblue service: #{e.message}"
    nil
  end
end