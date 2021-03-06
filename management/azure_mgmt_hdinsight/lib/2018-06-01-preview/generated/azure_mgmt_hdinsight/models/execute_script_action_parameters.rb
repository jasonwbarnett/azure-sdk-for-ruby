# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # The parameters for the script actions to execute on a running cluster.
    #
    class ExecuteScriptActionParameters

      include MsRestAzure

      # @return [Array<RuntimeScriptAction>] The list of run time script
      # actions.
      attr_accessor :script_actions

      # @return [Boolean] Gets or sets if the scripts needs to be persisted.
      attr_accessor :persist_on_success


      #
      # Mapper for ExecuteScriptActionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExecuteScriptActionParameters',
          type: {
            name: 'Composite',
            class_name: 'ExecuteScriptActionParameters',
            model_properties: {
              script_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scriptActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RuntimeScriptActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RuntimeScriptAction'
                      }
                  }
                }
              },
              persist_on_success: {
                client_side_validation: true,
                required: true,
                serialized_name: 'persistOnSuccess',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
