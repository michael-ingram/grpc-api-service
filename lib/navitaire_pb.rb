# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: navitaire.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'


descriptor_data = "\n\x0fnavitaire.proto\x12\tnavitaire\x1a\x1bgoogle/protobuf/empty.proto\";\n\x13GetStationsResponse\x12$\n\x08stations\x18\x01 \x03(\x0b\x32\x12.navitaire.Station\"\xa2\x01\n\x07Station\x12\x0f\n\x07\x61llowed\x18\x01 \x01(\x08\x12\x33\n\x10location_details\x18\x02 \x01(\x0b\x32\x19.navitaire.LocationDetail\x12\x15\n\rcurrency_code\x18\x03 \x01(\t\x12\x11\n\tin_active\x18\x04 \x01(\x08\x12\x11\n\tfull_name\x18\x05 \x01(\t\x12\x14\n\x0cstation_code\x18\x06 \x01(\t\"\x9a\x01\n\x0eLocationDetail\x12\x14\n\x0c\x63ountry_code\x18\x01 \x01(\t\x12\x11\n\tcity_code\x18\x02 \x01(\t\x12\x1b\n\x13province_state_code\x18\x03 \x01(\t\x12\x16\n\x0etime_zone_code\x18\x04 \x01(\t\x12*\n\x0b\x63oordinates\x18\x05 \x01(\x0b\x32\x15.navitaire.Coordinate\"1\n\nCoordinate\x12\x10\n\x08latitude\x18\x01 \x01(\t\x12\x11\n\tlongitude\x18\x02 \x01(\t2Y\n\x10NavitaireService\x12\x45\n\x0bGetStations\x12\x16.google.protobuf.Empty\x1a\x1e.navitaire.GetStationsResponseb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Navitaire
  GetStationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("navitaire.GetStationsResponse").msgclass
  Station = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("navitaire.Station").msgclass
  LocationDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("navitaire.LocationDetail").msgclass
  Coordinate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("navitaire.Coordinate").msgclass
end
