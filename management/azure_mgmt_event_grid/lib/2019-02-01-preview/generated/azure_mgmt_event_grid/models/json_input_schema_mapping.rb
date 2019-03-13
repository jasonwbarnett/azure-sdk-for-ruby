# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # This enables publishing to Event Grid using a custom input schema. This
    # can be used to map properties from a custom input JSON schema to the
    # Event Grid event schema.
    #
    class JsonInputSchemaMapping < InputSchemaMapping

      include MsRestAzure


      def initialize
        @inputSchemaMappingType = "Json"
      end

      attr_accessor :inputSchemaMappingType

      # @return [JsonField] The mapping information for the Id property of the
      # Event Grid Event.
      attr_accessor :id

      # @return [JsonField] The mapping information for the Topic property of
      # the Event Grid Event.
      attr_accessor :topic

      # @return [JsonField] The mapping information for the EventTime property
      # of the Event Grid Event.
      attr_accessor :event_time

      # @return [JsonFieldWithDefault] The mapping information for the
      # EventType property of the Event Grid Event.
      attr_accessor :event_type

      # @return [JsonFieldWithDefault] The mapping information for the Subject
      # property of the Event Grid Event.
      attr_accessor :subject

      # @return [JsonFieldWithDefault] The mapping information for the
      # DataVersion property of the Event Grid Event.
      attr_accessor :data_version


      #
      # Mapper for JsonInputSchemaMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Json',
          type: {
            name: 'Composite',
            class_name: 'JsonInputSchemaMapping',
            model_properties: {
              inputSchemaMappingType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'inputSchemaMappingType',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.id',
                type: {
                  name: 'Composite',
                  class_name: 'JsonField'
                }
              },
              topic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.topic',
                type: {
                  name: 'Composite',
                  class_name: 'JsonField'
                }
              },
              event_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventTime',
                type: {
                  name: 'Composite',
                  class_name: 'JsonField'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventType',
                type: {
                  name: 'Composite',
                  class_name: 'JsonFieldWithDefault'
                }
              },
              subject: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subject',
                type: {
                  name: 'Composite',
                  class_name: 'JsonFieldWithDefault'
                }
              },
              data_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataVersion',
                type: {
                  name: 'Composite',
                  class_name: 'JsonFieldWithDefault'
                }
              }
            }
          }
        }
      end
    end
  end
end
