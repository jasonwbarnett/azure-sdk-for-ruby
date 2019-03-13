# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # This is the base type that represents an advanced filter. To configure an
    # advanced filter, do not directly instantiate an object of this class.
    # Instead, instantiate an object of a derived class such as
    # BoolEqualsAdvancedFilter, NumberInAdvancedFilter,
    # StringEqualsAdvancedFilter etc. depending on the type of the key based on
    # which you want to filter.
    #
    class AdvancedFilter

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["NumberIn"] = "NumberInAdvancedFilter"
      @@discriminatorMap["NumberNotIn"] = "NumberNotInAdvancedFilter"
      @@discriminatorMap["NumberLessThan"] = "NumberLessThanAdvancedFilter"
      @@discriminatorMap["NumberGreaterThan"] = "NumberGreaterThanAdvancedFilter"
      @@discriminatorMap["NumberLessThanOrEquals"] = "NumberLessThanOrEqualsAdvancedFilter"
      @@discriminatorMap["NumberGreaterThanOrEquals"] = "NumberGreaterThanOrEqualsAdvancedFilter"
      @@discriminatorMap["BoolEquals"] = "BoolEqualsAdvancedFilter"
      @@discriminatorMap["StringIn"] = "StringInAdvancedFilter"
      @@discriminatorMap["StringNotIn"] = "StringNotInAdvancedFilter"
      @@discriminatorMap["StringBeginsWith"] = "StringBeginsWithAdvancedFilter"
      @@discriminatorMap["StringEndsWith"] = "StringEndsWithAdvancedFilter"
      @@discriminatorMap["StringContains"] = "StringContainsAdvancedFilter"

      def initialize
        @operatorType = "AdvancedFilter"
      end

      attr_accessor :operatorType

      # @return [String] The field/property in the event based on which you
      # want to filter.
      attr_accessor :key


      #
      # Mapper for AdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdvancedFilter',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'operatorType',
            uber_parent: 'AdvancedFilter',
            class_name: 'AdvancedFilter',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
