require 'navblue_pb'              # For the message classes (e.g., FlightByIdRequest, FlightByIdResponse)
require 'navblue_services_pb'     # For the gRPC service and stub (FlightService)

class NavblueClient
  def initialize
    @stub = Navblue::NavblueService::Stub.new('localhost:50051', :this_channel_is_insecure)
  end

  def flight_by_id(flight_id)
    request = Navblue::FlightByIdRequest.new(unique_id: flight_id)
    @stub.flight_by_id(request)
  rescue GRPC::NotFound => e
    puts "Flight not found: #{e.message}"
    nil
  rescue StandardError => e
    puts "Error calling Navblue service: #{e.message}"
    nil
  end
end