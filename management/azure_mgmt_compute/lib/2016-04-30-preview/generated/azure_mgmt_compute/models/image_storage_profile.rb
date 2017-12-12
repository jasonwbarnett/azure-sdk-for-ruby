# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # Describes a storage profile.
    #
    class ImageStorageProfile

      include MsRestAzure

      # @return [ImageOSDisk] The OS disk.
      attr_accessor :os_disk

      # @return [Array<ImageDataDisk>] The data disks.
      attr_accessor :data_disks


      #
      # Mapper for ImageStorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageStorageProfile',
          type: {
            name: 'Composite',
            class_name: 'ImageStorageProfile',
            model_properties: {
              os_disk: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osDisk',
                type: {
                  name: 'Composite',
                  class_name: 'ImageOSDisk'
                }
              },
              data_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageDataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageDataDisk'
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