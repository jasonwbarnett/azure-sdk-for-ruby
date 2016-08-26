# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Parameters supplied to the CreateOrUpdate Queue operation.
    #
    class QueueCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Queue name.
      attr_accessor :name

      # @return [String] location of the resource.
      attr_accessor :location

      # @return [String] the duration of a peek lock; that is, the amount of
      # time that the message is locked for other receivers. The maximum
      # value for LockDuration is 5 minutes; the default value is 1 minute.
      attr_accessor :lock_duration

      # @return [DateTime] Last time a message was sent, or the last time
      # there was a receive request to this queue.
      attr_accessor :accessed_at

      # @return [String] the TimeSpan idle interval after which the queue is
      # automatically deleted. The minimum duration is 5 minutes.
      attr_accessor :auto_delete_on_idle

      # @return [EntityAvailabilityStatus] Entity availability status for the
      # queue. Possible values include: 'Available', 'Limited', 'Renaming',
      # 'Restoring', 'Unknown'
      attr_accessor :entity_availability_status

      # @return [DateTime] the exact time the message was created.
      attr_accessor :created_at

      # @return [String] the default message time to live value. This is the
      # duration after which the message expires, starting from when the
      # message is sent to Service Bus. This is the default value used when
      # TimeToLive is not set on a message itself.
      attr_accessor :default_message_time_to_live

      # @return [String] TimeSpan structure that defines the duration of the
      # duplicate detection history. The default value is 10 minutes..
      attr_accessor :duplicate_detection_history_time_window

      # @return [Boolean] value that indicates whether server-side batched
      # operations are enabled..
      attr_accessor :enable_batched_operations

      # @return [Boolean] a value that indicates whether this queue has dead
      # letter support when a message expires.
      attr_accessor :dead_lettering_on_message_expiration

      # @return [Boolean] a value that indicates whether Express Entities are
      # enabled. An express queue holds a message in memory temporarily
      # before writing it to persistent storage.
      attr_accessor :enable_express

      # @return [Boolean] value that indicates whether the queue to be
      # partitioned across multiple message brokers is enabled.
      attr_accessor :enable_partitioning

      # @return [Boolean] a value that indicates whether the message is
      # anonymous accessible.
      attr_accessor :is_anonymous_accessible

      # @return [Integer] the maximum delivery count. A message is
      # automatically deadlettered after this number of deliveries.
      attr_accessor :max_delivery_count

      # @return [Integer] the maximum size of the queue in megabytes, which is
      # the size of memory allocated for the queue.
      attr_accessor :max_size_in_megabytes

      # @return [Integer] the number of messages in the queue.
      attr_accessor :message_count

      # @return [MessageCountDetails]
      attr_accessor :count_details

      # @return [Boolean] the value indicating if this queue requires
      # duplicate detection.
      attr_accessor :requires_duplicate_detection

      # @return [Boolean] a value that indicates whether the queue supports
      # the concept of session.
      attr_accessor :requires_session

      # @return [Integer] the size of the queue in bytes.
      attr_accessor :size_in_bytes

      # @return [EntityStatus] Enumerates the possible values for the status
      # of a messaging entity. Possible values include: 'Active', 'Creating',
      # 'Deleting', 'Disabled', 'ReceiveDisabled', 'Renaming', 'Restoring',
      # 'SendDisabled', 'Unknown'
      attr_accessor :status

      # @return [Boolean] a value that indicates whether the queue supports
      # ordering.
      attr_accessor :support_ordering

      # @return [DateTime] the exact time the message has been updated.
      attr_accessor :updated_at


      #
      # Mapper for QueueCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'QueueCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'QueueCreateOrUpdateParameters',
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
              lock_duration: {
                required: false,
                serialized_name: 'properties.lockDuration ',
                type: {
                  name: 'String'
                }
              },
              accessed_at: {
                required: false,
                serialized_name: 'properties.accessedAt',
                type: {
                  name: 'DateTime'
                }
              },
              auto_delete_on_idle: {
                required: false,
                serialized_name: 'properties.autoDeleteOnIdle',
                type: {
                  name: 'String'
                }
              },
              entity_availability_status: {
                required: false,
                serialized_name: 'properties.entityAvailabilityStatus ',
                type: {
                  name: 'Enum',
                  module: 'EntityAvailabilityStatus'
                }
              },
              created_at: {
                required: false,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              default_message_time_to_live: {
                required: false,
                serialized_name: 'properties.defaultMessageTimeToLive',
                type: {
                  name: 'String'
                }
              },
              duplicate_detection_history_time_window: {
                required: false,
                serialized_name: 'properties.duplicateDetectionHistoryTimeWindow ',
                type: {
                  name: 'String'
                }
              },
              enable_batched_operations: {
                required: false,
                serialized_name: 'properties.enableBatchedOperations',
                type: {
                  name: 'Boolean'
                }
              },
              dead_lettering_on_message_expiration: {
                required: false,
                serialized_name: 'properties.deadLetteringOnMessageExpiration',
                type: {
                  name: 'Boolean'
                }
              },
              enable_express: {
                required: false,
                serialized_name: 'properties.enableExpress',
                type: {
                  name: 'Boolean'
                }
              },
              enable_partitioning: {
                required: false,
                serialized_name: 'properties.enablePartitioning',
                type: {
                  name: 'Boolean'
                }
              },
              is_anonymous_accessible: {
                required: false,
                serialized_name: 'properties.isAnonymousAccessible',
                type: {
                  name: 'Boolean'
                }
              },
              max_delivery_count: {
                required: false,
                serialized_name: 'properties.maxDeliveryCount ',
                type: {
                  name: 'Number'
                }
              },
              max_size_in_megabytes: {
                required: false,
                serialized_name: 'properties.maxSizeInMegabytes',
                type: {
                  name: 'Number'
                }
              },
              message_count: {
                required: false,
                serialized_name: 'properties.messageCount ',
                type: {
                  name: 'Number'
                }
              },
              count_details: {
                required: false,
                serialized_name: 'properties.countDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MessageCountDetails'
                }
              },
              requires_duplicate_detection: {
                required: false,
                serialized_name: 'properties.requiresDuplicateDetection',
                type: {
                  name: 'Boolean'
                }
              },
              requires_session: {
                required: false,
                serialized_name: 'properties.requiresSession',
                type: {
                  name: 'Boolean'
                }
              },
              size_in_bytes: {
                required: false,
                serialized_name: 'properties.sizeInBytes ',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'EntityStatus'
                }
              },
              support_ordering: {
                required: false,
                serialized_name: 'properties.supportOrdering',
                type: {
                  name: 'Boolean'
                }
              },
              updated_at: {
                required: false,
                serialized_name: 'properties.updatedAt',
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
