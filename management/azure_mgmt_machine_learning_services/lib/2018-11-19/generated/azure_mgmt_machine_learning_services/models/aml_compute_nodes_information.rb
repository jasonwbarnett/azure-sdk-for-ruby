# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_11_19
  module Models
    #
    # Compute node information related to a AmlCompute.
    #
    class AmlComputeNodesInformation < ComputeNodesInformation

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<AmlComputeNodeInformation>] The collection of returned
      # AmlCompute nodes details.
      attr_accessor :nodes

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<AmlComputeNodeInformation>] operation results.
      #
      def get_all_items
        items = @nodes
        page = self
        while page.next_link != nil && !page.next_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.nodes)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [AmlComputeNodesInformation] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @nodes = response.body.nodes
          self
        end
      end

      #
      # Mapper for AmlComputeNodesInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AmlCompute',
          type: {
            name: 'Composite',
            class_name: 'AmlComputeNodesInformation',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              computeType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'computeType',
                type: {
                  name: 'String'
                }
              },
              nodes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nodes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AmlComputeNodeInformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AmlComputeNodeInformation'
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