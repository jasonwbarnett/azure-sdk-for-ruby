# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Catalog information for managed dedicated integration runtime.
    #
    class IntegrationRuntimeSsisCatalogInfo

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] The catalog database server URL.
      attr_accessor :catalog_server_endpoint

      # @return [String] The administrator user name of catalog database.
      attr_accessor :catalog_admin_user_name

      # @return [SecureString] The password of the administrator user account
      # of the catalog database.
      attr_accessor :catalog_admin_password

      # @return [IntegrationRuntimeSsisCatalogPricingTier] The pricing tier for
      # the catalog database. The valid values could be found in
      # https://azure.microsoft.com/en-us/pricing/details/sql-database/.
      # Possible values include: 'Basic', 'Standard', 'Premium', 'PremiumRS'
      attr_accessor :catalog_pricing_tier


      #
      # Mapper for IntegrationRuntimeSsisCatalogInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeSsisCatalogInfo',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeSsisCatalogInfo',
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
              catalog_server_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'catalogServerEndpoint',
                type: {
                  name: 'String'
                }
              },
              catalog_admin_user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'catalogAdminUserName',
                constraints: {
                  MaxLength: 128,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              catalog_admin_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'catalogAdminPassword',
                type: {
                  name: 'Composite',
                  class_name: 'SecureString'
                }
              },
              catalog_pricing_tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'catalogPricingTier',
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