require 'stations_pb'              # For the message classes (e.g., FlightByIdRequest, FlightByIdResponse)
require 'stations_services_pb'     # For the gRPC service and stub (FlightService)

class StationsClient
  def initialize
    @stub = Stations::StationsService::Stub.new('localhost:50052', :this_channel_is_insecure)
  end

  def get_stations
    @stub.get_stations(Google::Protobuf::Empty.new)
  rescue GRPC::NotFound => e
    puts "Flight not found: #{e.message}"
    nil
  rescue StandardError => e
    puts "Error calling Navblue service: #{e.message}"
    nil
  end
end