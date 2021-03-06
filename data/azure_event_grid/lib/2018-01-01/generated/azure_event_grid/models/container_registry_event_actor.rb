# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # The agent that initiated the event. For most situations, this could be
    # from the authorization context of the request.
    #
    class ContainerRegistryEventActor

      include MsRestAzure

      # @return [String] The subject or username associated with the request
      # context that generated the event.
      attr_accessor :name


      #
      # Mapper for ContainerRegistryEventActor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerRegistryEventActor',
          type: {
            name: 'Composite',
            class_name: 'ContainerRegistryEventActor',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
