# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # (Optional) The ID of the parent management group.
    #
    class ParentGroupInfo

      include MsRestAzure

      # @return [String] The fully qualified ID for the parent management
      # group.  For example,
      # /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
      attr_accessor :id

      # @return [String] The name of the parent management group
      attr_accessor :name

      # @return [String] The friendly name of the parent management group.
      attr_accessor :display_name


      #
      # Mapper for ParentGroupInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ParentGroupInfo',
          type: {
            name: 'Composite',
            class_name: 'ParentGroupInfo',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
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
