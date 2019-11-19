# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Input for command that completes sync migration for a database.
    #
    class MigrateSyncCompleteCommandInput

      include MsRestAzure

      # @return [String] Name of database
      attr_accessor :database_name

      # @return [DateTime] Time stamp to complete
      attr_accessor :commit_time_stamp


      #
      # Mapper for MigrateSyncCompleteCommandInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSyncCompleteCommandInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSyncCompleteCommandInput',
            model_properties: {
              database_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              commit_time_stamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'commitTimeStamp',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end