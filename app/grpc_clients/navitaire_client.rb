require 'navitaire_pb'              # For the message classes
require 'navitaire_services_pb'     # For the gRPC service and stub

class NavitaireClient
  def initialize
    @stub = Navitaire::NavitaireService::Stub.new('localhost:50052', :this_channel_is_insecure)
  end

  def get_stations
    @stub.get_stations(Google::Protobuf::Empty.new)
  rescue GRPC::NotFound => e
    puts "Stations not found: #{e.message}"
    nil
  rescue StandardError => e
    puts "Error calling Navitaire service: #{e.message}"
    nil
  end
end