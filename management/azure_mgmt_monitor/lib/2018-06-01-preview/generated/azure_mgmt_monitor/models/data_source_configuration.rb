# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class DataSourceConfiguration

      include MsRestAzure

      # @return [Array<EtwProviderConfiguration>] ETW providers configuration
      attr_accessor :providers

      # @return [Array<PerformanceCounterConfiguration>] Performance counter
      # configuration
      attr_accessor :perf_counters

      # @return [Array<EventLogConfiguration>] Windows event logs
      # configuration.
      attr_accessor :event_logs


      #
      # Mapper for DataSourceConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataSourceConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DataSourceConfiguration',
            model_properties: {
              providers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EtwProviderConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EtwProviderConfiguration'
                      }
                  }
                }
              },
              perf_counters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'perfCounters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PerformanceCounterConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PerformanceCounterConfiguration'
                      }
                  }
                }
              },
              event_logs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventLogs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EventLogConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EventLogConfiguration'
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
