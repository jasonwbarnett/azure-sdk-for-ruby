# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Details about a service operation.
    #
    class OperationServiceSpecification

      include MsRestAzure

      # @return [Array<OperationLogSpecification>] Details about operations
      # related to logs.
      attr_accessor :log_specifications

      # @return [Array<OperationMetricSpecification>] Details about operations
      # related to metrics.
      attr_accessor :metric_specifications


      #
      # Mapper for OperationServiceSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationServiceSpecification',
          type: {
            name: 'Composite',
            class_name: 'OperationServiceSpecification',
            model_properties: {
              log_specifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationLogSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationLogSpecification'
                      }
                  }
                }
              },
              metric_specifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationMetricSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationMetricSpecification'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end