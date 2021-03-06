# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # An object that represents a set of mutable event source resource
    # properties.
    #
    class EventSourceMutableProperties

      include MsRestAzure

      # @return [String] The event property that will be used as the event
      # source's timestamp. If a value isn't specified for
      # timestampPropertyName, or if null or empty-string is specified, the
      # event creation time will be used.
      attr_accessor :timestamp_property_name

      # @return [LocalTimestamp] An object that represents the local timestamp
      # property. It contains the format of local timestamp that needs to be
      # used and the corresponding timezone offset information. If a value
      # isn't specified for localTimestamp, or if null, then the local
      # timestamp will not be ingressed with the events.
      attr_accessor :local_timestamp


      #
      # Mapper for EventSourceMutableProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSourceMutableProperties',
          type: {
            name: 'Composite',
            class_name: 'EventSourceMutableProperties',
            model_properties: {
              timestamp_property_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestampPropertyName',
                type: {
                  name: 'String'
                }
              },
              local_timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localTimestamp',
                type: {
                  name: 'Composite',
                  class_name: 'LocalTimestamp'
                }
              }
            }
          }
        }
      end
    end
  end
end
