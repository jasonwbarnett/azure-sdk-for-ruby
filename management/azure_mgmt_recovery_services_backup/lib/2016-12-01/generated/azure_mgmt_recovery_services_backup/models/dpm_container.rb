# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # DPM workload-specific protection container.
    #
    class DpmContainer < ProtectionContainer

      include MsRestAzure


      def initialize
        @protectableObjectType = "DPMContainer"
      end

      attr_accessor :protectableObjectType

      # @return [Boolean] Specifies whether the container is re-registrable.
      attr_accessor :can_re_register

      # @return [String] ID of container.
      attr_accessor :container_id

      # @return [Integer] Number of protected items in the BackupEngine
      attr_accessor :protected_item_count

      # @return [String] Backup engine Agent version
      attr_accessor :dpm_agent_version

      # @return [Array<String>] List of BackupEngines protecting the container
      attr_accessor :dpmservers

      # @return [Boolean] To check if upgrade available
      attr_accessor :upgrade_available

      # @return [String] Protection status of the container.
      attr_accessor :protection_status

      # @return [DPMContainerExtendedInfo] Extended Info of the container.
      attr_accessor :extended_info


      #
      # Mapper for DpmContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DPMContainer',
          type: {
            name: 'Composite',
            class_name: 'DpmContainer',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              protectableObjectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectableObjectType',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              container_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerId',
                type: {
                  name: 'String'
                }
              },
              protected_item_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemCount',
                type: {
                  name: 'Number'
                }
              },
              dpm_agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dpmAgentVersion',
                type: {
                  name: 'String'
                }
              },
              dpmservers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DPMServers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              upgrade_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              protection_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'DPMContainerExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end