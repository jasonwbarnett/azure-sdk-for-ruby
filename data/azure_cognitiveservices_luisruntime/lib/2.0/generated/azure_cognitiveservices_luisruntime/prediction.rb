# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisRuntime::V2_0
  #
  # Prediction
  #
  class Prediction
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Prediction class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LuisRuntimeClient] reference to the LuisRuntimeClient
    attr_reader :client

    #
    # Gets predictions for a given utterance, in the form of intents and entities.
    # The current maximum query size is 500 characters.
    #
    # @param app_id [String] The LUIS application ID (Guid).
    # @param query [String] The utterance to predict.
    # @param timezone_offset [Float] The timezone offset for the location of the
    # request.
    # @param verbose [Boolean] If true, return all intents instead of just the top
    # scoring intent.
    # @param staging [Boolean] Use the staging endpoint slot.
    # @param spell_check [Boolean] Enable spell checking.
    # @param bing_spell_check_subscription_key [String] The subscription key to use
    # when enabling bing spell check
    # @param log [Boolean] Log query (default is true)
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LuisResult] operation results.
    #
    def resolve(app_id, query, timezone_offset:nil, verbose:nil, staging:nil, spell_check:nil, bing_spell_check_subscription_key:nil, log:nil, custom_headers:nil)
      response = resolve_async(app_id, query, timezone_offset:timezone_offset, verbose:verbose, staging:staging, spell_check:spell_check, bing_spell_check_subscription_key:bing_spell_check_subscription_key, log:log, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets predictions for a given utterance, in the form of intents and entities.
    # The current maximum query size is 500 characters.
    #
    # @param app_id [String] The LUIS application ID (Guid).
    # @param query [String] The utterance to predict.
    # @param timezone_offset [Float] The timezone offset for the location of the
    # request.
    # @param verbose [Boolean] If true, return all intents instead of just the top
    # scoring intent.
    # @param staging [Boolean] Use the staging endpoint slot.
    # @param spell_check [Boolean] Enable spell checking.
    # @param bing_spell_check_subscription_key [String] The subscription key to use
    # when enabling bing spell check
    # @param log [Boolean] Log query (default is true)
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def resolve_with_http_info(app_id, query, timezone_offset:nil, verbose:nil, staging:nil, spell_check:nil, bing_spell_check_subscription_key:nil, log:nil, custom_headers:nil)
      resolve_async(app_id, query, timezone_offset:timezone_offset, verbose:verbose, staging:staging, spell_check:spell_check, bing_spell_check_subscription_key:bing_spell_check_subscription_key, log:log, custom_headers:custom_headers).value!
    end

    #
    # Gets predictions for a given utterance, in the form of intents and entities.
    # The current maximum query size is 500 characters.
    #
    # @param app_id [String] The LUIS application ID (Guid).
    # @param query [String] The utterance to predict.
    # @param timezone_offset [Float] The timezone offset for the location of the
    # request.
    # @param verbose [Boolean] If true, return all intents instead of just the top
    # scoring intent.
    # @param staging [Boolean] Use the staging endpoint slot.
    # @param spell_check [Boolean] Enable spell checking.
    # @param bing_spell_check_subscription_key [String] The subscription key to use
    # when enabling bing spell check
    # @param log [Boolean] Log query (default is true)
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def resolve_async(app_id, query, timezone_offset:nil, verbose:nil, staging:nil, spell_check:nil, bing_spell_check_subscription_key:nil, log:nil, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'query is nil' if query.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'q',
        type: {
          name: 'String'
        }
      }
      request_content = @client.serialize(request_mapper,  query)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
          query_params: {'timezoneOffset' => timezone_offset,'verbose' => verbose,'staging' => staging,'spellCheck' => spell_check,'bing-spell-check-subscription-key' => bing_spell_check_subscription_key,'log' => log},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisRuntime::V2_0::Models::LuisResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
