# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  module Models
    #
    # Summary of the alerts by monitor service
    #
    class AlertsSummaryByMonitorService

      include MsRestAzure

      # @return [Integer] Count of alerts of "Platform"
      attr_accessor :platform

      # @return [Integer] Count of alerts of "Application Insights"
      attr_accessor :application_insights

      # @return [Integer] Count of alerts of "Log Analytics"
      attr_accessor :log_analytics

      # @return [Integer] Count of alerts of "Zabbix"
      attr_accessor :zabbix

      # @return [Integer] Count of alerts of "SCOM"
      attr_accessor :scom

      # @return [Integer] Count of alerts of "Nagios"
      attr_accessor :nagios

      # @return [Integer] Count of alerts of "Infrastructure Insights"
      attr_accessor :infrastructure_insights

      # @return [Integer] Count of alerts of "ActivityLog Administrative"
      attr_accessor :activity_log_administrative

      # @return [Integer] Count of alerts of "ActivityLog Security"
      attr_accessor :activity_log_security

      # @return [Integer] Count of alerts of "ActivityLog Recommendation"
      attr_accessor :activity_log_recommendation

      # @return [Integer] Count of alerts of "ActivityLog Policy"
      attr_accessor :activity_log_policy

      # @return [Integer] Count of alerts of "ActivityLog Autoscale"
      attr_accessor :activity_log_autoscale

      # @return [Integer] Count of alerts of "ServiceHealth"
      attr_accessor :service_health

      # @return [Integer] Count of alerts of "Smart Detector"
      attr_accessor :smart_detector


      #
      # Mapper for AlertsSummaryByMonitorService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertsSummaryByMonitorService',
          type: {
            name: 'Composite',
            class_name: 'AlertsSummaryByMonitorService',
            model_properties: {
              platform: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platform',
                type: {
                  name: 'Number'
                }
              },
              application_insights: {
                client_side_validation: true,
                required: false,
                serialized_name: 'application Insights',
                type: {
                  name: 'Number'
                }
              },
              log_analytics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'log Analytics',
                type: {
                  name: 'Number'
                }
              },
              zabbix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zabbix',
                type: {
                  name: 'Number'
                }
              },
              scom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scom',
                type: {
                  name: 'Number'
                }
              },
              nagios: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nagios',
                type: {
                  name: 'Number'
                }
              },
              infrastructure_insights: {
                client_side_validation: true,
                required: false,
                serialized_name: 'infrastructure Insights',
                type: {
                  name: 'Number'
                }
              },
              activity_log_administrative: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Administrative',
                type: {
                  name: 'Number'
                }
              },
              activity_log_security: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Security',
                type: {
                  name: 'Number'
                }
              },
              activity_log_recommendation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Recommendation',
                type: {
                  name: 'Number'
                }
              },
              activity_log_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Policy',
                type: {
                  name: 'Number'
                }
              },
              activity_log_autoscale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Autoscale',
                type: {
                  name: 'Number'
                }
              },
              service_health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceHealth',
                type: {
                  name: 'Number'
                }
              },
              smart_detector: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smartDetector',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end