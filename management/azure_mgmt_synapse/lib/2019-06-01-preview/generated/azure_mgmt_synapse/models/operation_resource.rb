# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # An operation
    #
    class OperationResource

      include MsRestAzure

      # @return [String] Operation ID
      attr_accessor :id

      # @return [String] Operation name
      attr_accessor :name

      # @return [OperationStatus] Operation status. Possible values include:
      # 'InProgress', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :status

      # @return Operation properties
      attr_accessor :properties

      # @return [ErrorDetail] Errors from the operation
      attr_accessor :error

      # @return [DateTime] Operation start time
      attr_accessor :start_time

      # @return [DateTime] Operation start time
      attr_accessor :end_time

      # @return [Float] Completion percentage of the operation
      attr_accessor :percent_complete


      #
      # Mapper for OperationResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResource',
          type: {
            name: 'Composite',
            class_name: 'OperationResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorDetail'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              percent_complete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'percentComplete',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end