# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # The deleted key item containing the deleted key metadata and information
    # about deletion.
    #
    class DeletedKeyItem < KeyItem

      include MsRestAzure

      # @return [String] The url of the recovery object, used to identify and
      # recover the deleted key.
      attr_accessor :recovery_id

      # @return The time when the key is scheduled to be purged, in UTC
      attr_accessor :scheduled_purge_date

      # @return The time when the key was deleted, in UTC
      attr_accessor :deleted_date


      #
      # Mapper for DeletedKeyItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeletedKeyItem',
          type: {
            name: 'Composite',
            class_name: 'DeletedKeyItem',
            model_properties: {
              kid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kid',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'KeyAttributes'
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
              managed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managed',
                type: {
                  name: 'Boolean'
                }
              },
              recovery_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryId',
                type: {
                  name: 'String'
                }
              },
              scheduled_purge_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scheduledPurgeDate',
                type: {
                  name: 'UnixTime'
                }
              },
              deleted_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deletedDate',
                type: {
                  name: 'UnixTime'
                }
              }
            }
          }
        }
      end
    end
  end
end