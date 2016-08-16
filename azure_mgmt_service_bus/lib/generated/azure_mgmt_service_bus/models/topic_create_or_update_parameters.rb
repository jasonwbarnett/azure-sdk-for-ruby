# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Parameters supplied to the CreateOrUpdate Topic operation.
    #
    class TopicCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Topic name.
      attr_accessor :name

      # @return [String] Location of the resource.
      attr_accessor :location

      # @return [DateTime] Last time the message was sent or a request was
      # received for this topic.
      attr_accessor :accessed_at

      # @return [Duration] TimeSpan idle interval after which the topic is
      # automatically deleted. The minimum duration is 5 minutes.
      attr_accessor :auto_delete_on_idle

      # @return [AvailabilityStatus] Entity availability status for the topic.
      # Possible values include: 'Available', 'Limited', 'Renaming',
      # 'Restoring', 'Unknown'
      attr_accessor :availability_status

      # @return [DateTime] Exact time the message was created.
      attr_accessor :created_at

      # @return [Duration] Default message time to live value. This is the
      # duration after which the message expires, starting from when the
      # message is sent to Service Bus. This is the default value used when
      # TimeToLive is not set on a message itself.
      attr_accessor :default_message_time_to_live

      # @return [Duration] TimeSpan structure that defines the duration of the
      # duplicate detection history. The default value is 10 minutes..
      attr_accessor :duplicate_detection_history_time_window

      # @return [Boolean] Value that indicates whether server-side batched
      # operations are enabled..
      attr_accessor :enable_batched_operations

      # @return [Boolean] Value that indicates whether Express Entities are
      # enabled. An express topic holds a message in memory temporarily
      # before writing it to persistent storage.
      attr_accessor :enable_express

      # @return [Boolean] Whether messages should be filtered before
      # publishing.
      attr_accessor :enable_filtering_messages_before_publishing

      # @return [Boolean] Value that indicates whether the topic to be
      # partitioned across multiple message brokers is enabled.
      attr_accessor :enable_partitioning

      # @return [Boolean] Value that indicates whether the message is
      # anonymous accessible.
      attr_accessor :is_anonymous_accessible

      # @return [Integer] Maximum size of the topic in megabytes, which is the
      # size of memory allocated for the topic.
      attr_accessor :max_size_in_megabytes

      # @return [MessageCountDetails]
      attr_accessor :message_count_details

      # @return [String] Name of the topic.
      attr_accessor :path

      # @return [Boolean] Value indicating if this topic requires duplicate
      # detection.
      attr_accessor :requires_duplicate_detection

      # @return [Integer] Size of the topic in bytes.
      attr_accessor :size_in_bytes

      # @return [EntityStatus] Enumerates the possible values for the status
      # of a messaging entity. Possible values include: 'Active', 'Creating',
      # 'Deleting', 'Disabled', 'ReceiveDisabled', 'Renaming', 'Restoring',
      # 'SendDisabled', 'Unknown'
      attr_accessor :status

      # @return [Integer] Number of subscriptions.
      attr_accessor :subscription_count

      # @return [Boolean] Value that indicates whether the topic supports
      # ordering.
      attr_accessor :support_ordering

      # @return [DateTime] The exact time the message has been updated.
      attr_accessor :updated_at

      # @return [String] Represents the metadata description of the topic
      attr_accessor :user_metadata


      #
      # Mapper for TopicCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopicCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'TopicCreateOrUpdateParameters',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              accessed_at: {
                required: false,
                serialized_name: 'properties.AccessedAt',
                type: {
                  name: 'DateTime'
                }
              },
              auto_delete_on_idle: {
                required: false,
                serialized_name: 'properties.AutoDeleteOnIdle',
                type: {
                  name: 'TimeSpan'
                }
              },
              availability_status: {
                required: false,
                serialized_name: 'properties.AvailabilityStatus ',
                type: {
                  name: 'Enum',
                  module: 'AvailabilityStatus'
                }
              },
              created_at: {
                required: false,
                serialized_name: 'properties.CreatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              default_message_time_to_live: {
                required: false,
                serialized_name: 'properties.DefaultMessageTimeToLive',
                type: {
                  name: 'TimeSpan'
                }
              },
              duplicate_detection_history_time_window: {
                required: false,
                serialized_name: 'properties.DuplicateDetectionHistoryTimeWindow ',
                type: {
                  name: 'TimeSpan'
                }
              },
              enable_batched_operations: {
                required: false,
                serialized_name: 'properties.EnableBatchedOperations',
                type: {
                  name: 'Boolean'
                }
              },
              enable_express: {
                required: false,
                serialized_name: 'properties.EnableExpress',
                type: {
                  name: 'Boolean'
                }
              },
              enable_filtering_messages_before_publishing: {
                required: false,
                serialized_name: 'properties.EnableFilteringMessagesBeforePublishing',
                type: {
                  name: 'Boolean'
                }
              },
              enable_partitioning: {
                required: false,
                serialized_name: 'properties.EnablePartitioning',
                type: {
                  name: 'Boolean'
                }
              },
              is_anonymous_accessible: {
                required: false,
                serialized_name: 'properties.IsAnonymousAccessible',
                type: {
                  name: 'Boolean'
                }
              },
              max_size_in_megabytes: {
                required: false,
                serialized_name: 'properties.MaxSizeInMegabytes ',
                type: {
                  name: 'Number'
                }
              },
              message_count_details: {
                required: false,
                serialized_name: 'properties.MessageCountDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MessageCountDetails'
                }
              },
              path: {
                required: false,
                serialized_name: 'properties.Path',
                type: {
                  name: 'String'
                }
              },
              requires_duplicate_detection: {
                required: false,
                serialized_name: 'properties.RequiresDuplicateDetection',
                type: {
                  name: 'Boolean'
                }
              },
              size_in_bytes: {
                required: false,
                serialized_name: 'properties.SizeInBytes ',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.Status',
                type: {
                  name: 'Enum',
                  module: 'EntityStatus'
                }
              },
              subscription_count: {
                required: false,
                serialized_name: 'properties.SubscriptionCount',
                type: {
                  name: 'Number'
                }
              },
              support_ordering: {
                required: false,
                serialized_name: 'properties.SupportOrdering',
                type: {
                  name: 'Boolean'
                }
              },
              updated_at: {
                required: false,
                serialized_name: 'properties.UpdatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              user_metadata: {
                required: false,
                serialized_name: 'properties.UserMetadata',
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