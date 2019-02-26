# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # PublicIPAddress resource
    #
    class PublicIPAddress < Resource

      include MsRestAzure

      # @return [IPAllocationMethod] Gets or sets PublicIP allocation method
      # (Static/Dynamic). Possible values include: 'Static', 'Dynamic'
      attr_accessor :public_ipallocation_method

      # @return [IPVersion] Gets or sets PublicIP address version (IPv4/IPv6).
      # Possible values include: 'IPv4', 'IPv6'
      attr_accessor :public_ipaddress_version

      # @return [IPConfiguration]
      attr_accessor :ip_configuration

      # @return [PublicIPAddressDnsSettings] Gets or sets FQDN of the DNS
      # record associated with the public IP address
      attr_accessor :dns_settings

      # @return [String]
      attr_accessor :ip_address

      # @return [Integer] Gets or sets the idle timeout of the public IP
      # address
      attr_accessor :idle_timeout_in_minutes

      # @return [String] Gets or sets resource GUID property of the PublicIP
      # resource
      attr_accessor :resource_guid

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for PublicIPAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublicIPAddress',
          type: {
            name: 'Composite',
            class_name: 'PublicIPAddress',
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
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              public_ipallocation_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              public_ipaddress_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddressVersion',
                type: {
                  name: 'String'
                }
              },
              ip_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'IPConfiguration'
                }
              },
              dns_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'PublicIPAddressDnsSettings'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'String'
                }
              },
              idle_timeout_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.idleTimeoutInMinutes',
                type: {
                  name: 'Number'
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
