# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Base class for all triggers that support one to many model for trigger to
    # pipeline.
    #
    class MultiplePipelineTrigger < Trigger

      include MsRestAzure


      def initialize
        @type = "MultiplePipelineTrigger"
      end

      attr_accessor :type

      # @return [Array<TriggerPipelineReference>] Pipelines that need to be
      # started.
      attr_accessor :pipelines


      #
      # Mapper for MultiplePipelineTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MultiplePipelineTrigger',
          type: {
            name: 'Composite',
            class_name: 'MultiplePipelineTrigger',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              runtime_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'runtimeState',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              pipelines: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pipelines',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TriggerPipelineReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TriggerPipelineReference'
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
