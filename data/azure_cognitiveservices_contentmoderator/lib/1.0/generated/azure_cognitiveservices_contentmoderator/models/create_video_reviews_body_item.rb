# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Schema items of the body.
    #
    class CreateVideoReviewsBodyItem

      include MsRestAzure

      # @return [Array<CreateVideoReviewsBodyItemVideoFramesItem>] Optional
      # metadata details.
      attr_accessor :video_frames

      # @return [Array<CreateVideoReviewsBodyItemMetadataItem>] Optional
      # metadata details.
      attr_accessor :metadata

      # @return [Enum] Type of the content. Possible values include: 'Video'
      attr_accessor :type

      # @return [String] Video content url to review.
      attr_accessor :content

      # @return [String] Content Identifier.
      attr_accessor :content_id

      # @return [Enum] Status of the video(Complete,Unpublished,Pending).
      # Possible values include: 'Complete', 'Unpublished', 'Pending'
      attr_accessor :status

      # @return [Integer] Timescale of the video.
      attr_accessor :timescale

      # @return [String] Optional CallbackEndpoint.
      attr_accessor :callback_endpoint


      #
      # Mapper for CreateVideoReviewsBodyItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateVideoReviewsBodyItem',
          type: {
            name: 'Composite',
            class_name: 'CreateVideoReviewsBodyItem',
            model_properties: {
              video_frames: {
                client_side_validation: true,
                required: false,
                serialized_name: 'VideoFrames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CreateVideoReviewsBodyItemVideoFramesItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateVideoReviewsBodyItemVideoFramesItem'
                      }
                  }
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Metadata',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CreateVideoReviewsBodyItemMetadataItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateVideoReviewsBodyItemMetadataItem'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Type',
                type: {
                  name: 'String'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Content',
                type: {
                  name: 'String'
                }
              },
              content_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ContentId',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Status',
                type: {
                  name: 'String'
                }
              },
              timescale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Timescale',
                type: {
                  name: 'Number'
                }
              },
              callback_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CallbackEndpoint',
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
