# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # The Azure Search Index.
    #
    class AzureSearchIndexDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "AzureSearchIndex"
      end

      attr_accessor :type

      # @return The name of the Azure Search Index. Type: string (or Expression
      # with resultType string).
      attr_accessor :index_name


      #
      # Mapper for AzureSearchIndexDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureSearchIndex',
          type: {
            name: 'Composite',
            class_name: 'AzureSearchIndexDataset',
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
              structure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'structure',
                type: {
                  name: 'Object'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
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
              index_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.indexName',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end