# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # By default, Event Grid expects events to be in the Event Grid event
    # schema. Specifying an input schema mapping enables publishing to Event
    # Grid using a custom input schema. Currently, the only supported type of
    # InputSchemaMapping is 'JsonInputSchemaMapping'.
    #
    class InputSchemaMapping

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Json"] = "JsonInputSchemaMapping"

      def initialize
        @inputSchemaMappingType = "InputSchemaMapping"
      end

      attr_accessor :inputSchemaMappingType


      #
      # Mapper for InputSchemaMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InputSchemaMapping',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'inputSchemaMappingType',
            uber_parent: 'InputSchemaMapping',
            class_name: 'InputSchemaMapping',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
