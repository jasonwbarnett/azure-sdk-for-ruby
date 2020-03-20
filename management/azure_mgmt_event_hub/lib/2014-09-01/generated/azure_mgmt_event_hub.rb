# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2014-09-01/generated/azure_mgmt_event_hub/module_definition'
require 'ms_rest_azure'

module Azure::EventHub::Mgmt::V2014_09_01
  autoload :Operations,                                         '2014-09-01/generated/azure_mgmt_event_hub/operations.rb'
  autoload :Namespaces,                                         '2014-09-01/generated/azure_mgmt_event_hub/namespaces.rb'
  autoload :EventHubs,                                          '2014-09-01/generated/azure_mgmt_event_hub/event_hubs.rb'
  autoload :ConsumerGroups,                                     '2014-09-01/generated/azure_mgmt_event_hub/consumer_groups.rb'
  autoload :EventHubManagementClient,                           '2014-09-01/generated/azure_mgmt_event_hub/event_hub_management_client.rb'

  module Models
    autoload :SharedAccessAuthorizationRuleListResult,            '2014-09-01/generated/azure_mgmt_event_hub/models/shared_access_authorization_rule_list_result.rb'
    autoload :OperationDisplay,                                   '2014-09-01/generated/azure_mgmt_event_hub/models/operation_display.rb'
    autoload :CheckNameAvailabilityParameter,                     '2014-09-01/generated/azure_mgmt_event_hub/models/check_name_availability_parameter.rb'
    autoload :OperationListResult,                                '2014-09-01/generated/azure_mgmt_event_hub/models/operation_list_result.rb'
    autoload :Operation,                                          '2014-09-01/generated/azure_mgmt_event_hub/models/operation.rb'
    autoload :Resource,                                           '2014-09-01/generated/azure_mgmt_event_hub/models/resource.rb'
    autoload :NamespaceCreateOrUpdateParameters,                  '2014-09-01/generated/azure_mgmt_event_hub/models/namespace_create_or_update_parameters.rb'
    autoload :EventHubCreateOrUpdateParameters,                   '2014-09-01/generated/azure_mgmt_event_hub/models/event_hub_create_or_update_parameters.rb'
    autoload :NamespaceListResult,                                '2014-09-01/generated/azure_mgmt_event_hub/models/namespace_list_result.rb'
    autoload :NamespaceUpdateParameter,                           '2014-09-01/generated/azure_mgmt_event_hub/models/namespace_update_parameter.rb'
    autoload :SharedAccessAuthorizationRuleCreateOrUpdateParameters, '2014-09-01/generated/azure_mgmt_event_hub/models/shared_access_authorization_rule_create_or_update_parameters.rb'
    autoload :CheckNameAvailabilityResult,                        '2014-09-01/generated/azure_mgmt_event_hub/models/check_name_availability_result.rb'
    autoload :ConsumerGroupListResult,                            '2014-09-01/generated/azure_mgmt_event_hub/models/consumer_group_list_result.rb'
    autoload :EventHubListResult,                                 '2014-09-01/generated/azure_mgmt_event_hub/models/event_hub_list_result.rb'
    autoload :Sku,                                                '2014-09-01/generated/azure_mgmt_event_hub/models/sku.rb'
    autoload :ConsumerGroupCreateOrUpdateParameters,              '2014-09-01/generated/azure_mgmt_event_hub/models/consumer_group_create_or_update_parameters.rb'
    autoload :TrackedResource,                                    '2014-09-01/generated/azure_mgmt_event_hub/models/tracked_resource.rb'
    autoload :NamespaceResource,                                  '2014-09-01/generated/azure_mgmt_event_hub/models/namespace_resource.rb'
    autoload :SharedAccessAuthorizationRuleResource,              '2014-09-01/generated/azure_mgmt_event_hub/models/shared_access_authorization_rule_resource.rb'
    autoload :SharedAccessAuthorizationRulePostResource,          '2014-09-01/generated/azure_mgmt_event_hub/models/shared_access_authorization_rule_post_resource.rb'
    autoload :EventHubResource,                                   '2014-09-01/generated/azure_mgmt_event_hub/models/event_hub_resource.rb'
    autoload :ConsumerGroupResource,                              '2014-09-01/generated/azure_mgmt_event_hub/models/consumer_group_resource.rb'
    autoload :SkuName,                                            '2014-09-01/generated/azure_mgmt_event_hub/models/sku_name.rb'
    autoload :SkuTier,                                            '2014-09-01/generated/azure_mgmt_event_hub/models/sku_tier.rb'
    autoload :NamespaceState,                                     '2014-09-01/generated/azure_mgmt_event_hub/models/namespace_state.rb'
    autoload :AccessRights,                                       '2014-09-01/generated/azure_mgmt_event_hub/models/access_rights.rb'
    autoload :EntityStatus,                                       '2014-09-01/generated/azure_mgmt_event_hub/models/entity_status.rb'
    autoload :UnavailableReason,                                  '2014-09-01/generated/azure_mgmt_event_hub/models/unavailable_reason.rb'
  end
end