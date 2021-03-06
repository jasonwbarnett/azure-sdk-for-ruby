# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  #
  # Service Fabric REST Client APIs allows management of Service Fabric
  # clusters, applications and services.
  #
  class MeshSecretValue
    include MsRestAzure

    #
    # Creates and initializes a new instance of the MeshSecretValue class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricClientAPIs] reference to the ServiceFabricClientAPIs
    attr_reader :client

    #
    # Adds the specified value as a new version of the specified secret resource.
    #
    # Creates a new value of the specified secret resource. The name of the value
    # is typically the version identifier. Once created the value cannot be
    # changed.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param secret_value_resource_description [SecretValueResourceDescription]
    # Description for creating a value of a secret resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SecretValueResourceDescription] operation results.
    #
    def add_value(secret_resource_name, secret_value_resource_name, secret_value_resource_description, custom_headers:nil)
      response = add_value_async(secret_resource_name, secret_value_resource_name, secret_value_resource_description, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds the specified value as a new version of the specified secret resource.
    #
    # Creates a new value of the specified secret resource. The name of the value
    # is typically the version identifier. Once created the value cannot be
    # changed.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param secret_value_resource_description [SecretValueResourceDescription]
    # Description for creating a value of a secret resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_value_with_http_info(secret_resource_name, secret_value_resource_name, secret_value_resource_description, custom_headers:nil)
      add_value_async(secret_resource_name, secret_value_resource_name, secret_value_resource_description, custom_headers:custom_headers).value!
    end

    #
    # Adds the specified value as a new version of the specified secret resource.
    #
    # Creates a new value of the specified secret resource. The name of the value
    # is typically the version identifier. Once created the value cannot be
    # changed.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param secret_value_resource_description [SecretValueResourceDescription]
    # Description for creating a value of a secret resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_value_async(secret_resource_name, secret_value_resource_name, secret_value_resource_description, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'secret_resource_name is nil' if secret_resource_name.nil?
      fail ArgumentError, 'secret_value_resource_name is nil' if secret_value_resource_name.nil?
      fail ArgumentError, 'secret_value_resource_description is nil' if secret_value_resource_description.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ServiceFabric::V6_5_0_36::Models::SecretValueResourceDescription.mapper()
      request_content = @client.serialize(request_mapper,  secret_value_resource_description)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Resources/Secrets/{secretResourceName}/values/{secretValueResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'secretResourceName' => secret_resource_name,'secretValueResourceName' => secret_value_resource_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::SecretValueResourceDescription.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::SecretValueResourceDescription.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the specified secret value resource.
    #
    # Get the information about the specified named secret value resources. The
    # information does not include the actual value of the secret.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SecretValueResourceDescription] operation results.
    #
    def get(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      response = get_async(secret_resource_name, secret_value_resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified secret value resource.
    #
    # Get the information about the specified named secret value resources. The
    # information does not include the actual value of the secret.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      get_async(secret_resource_name, secret_value_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the specified secret value resource.
    #
    # Get the information about the specified named secret value resources. The
    # information does not include the actual value of the secret.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'secret_resource_name is nil' if secret_resource_name.nil?
      fail ArgumentError, 'secret_value_resource_name is nil' if secret_value_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Secrets/{secretResourceName}/values/{secretValueResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'secretResourceName' => secret_resource_name,'secretValueResourceName' => secret_value_resource_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::SecretValueResourceDescription.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes the specified  value of the named secret resource.
    #
    # Deletes the secret value resource identified by the name. The name of the
    # resource is typically the version associated with that value. Deletion will
    # fail if the specified value is in use.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      response = delete_async(secret_resource_name, secret_value_resource_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the specified  value of the named secret resource.
    #
    # Deletes the secret value resource identified by the name. The name of the
    # resource is typically the version associated with that value. Deletion will
    # fail if the specified value is in use.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      delete_async(secret_resource_name, secret_value_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the specified  value of the named secret resource.
    #
    # Deletes the secret value resource identified by the name. The name of the
    # resource is typically the version associated with that value. Deletion will
    # fail if the specified value is in use.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'secret_resource_name is nil' if secret_resource_name.nil?
      fail ArgumentError, 'secret_value_resource_name is nil' if secret_value_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Secrets/{secretResourceName}/values/{secretValueResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'secretResourceName' => secret_resource_name,'secretValueResourceName' => secret_value_resource_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # List names of all values of the specified secret resource.
    #
    # Gets information about all secret value resources of the specified secret
    # resource. The information includes the names of the secret value resources,
    # but not the actual values.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PagedSecretValueResourceDescriptionList] operation results.
    #
    def list(secret_resource_name, custom_headers:nil)
      response = list_async(secret_resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List names of all values of the specified secret resource.
    #
    # Gets information about all secret value resources of the specified secret
    # resource. The information includes the names of the secret value resources,
    # but not the actual values.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(secret_resource_name, custom_headers:nil)
      list_async(secret_resource_name, custom_headers:custom_headers).value!
    end

    #
    # List names of all values of the specified secret resource.
    #
    # Gets information about all secret value resources of the specified secret
    # resource. The information includes the names of the secret value resources,
    # but not the actual values.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(secret_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'secret_resource_name is nil' if secret_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Secrets/{secretResourceName}/values'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'secretResourceName' => secret_resource_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::PagedSecretValueResourceDescriptionList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the specified value of the secret resource.
    #
    # Lists the decrypted value of the specified named value of the secret
    # resource. This is a privileged operation.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SecretValue] operation results.
    #
    def show(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      response = show_async(secret_resource_name, secret_value_resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the specified value of the secret resource.
    #
    # Lists the decrypted value of the specified named value of the secret
    # resource. This is a privileged operation.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def show_with_http_info(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      show_async(secret_resource_name, secret_value_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Lists the specified value of the secret resource.
    #
    # Lists the decrypted value of the specified named value of the secret
    # resource. This is a privileged operation.
    #
    # @param secret_resource_name [String] The name of the secret resource.
    # @param secret_value_resource_name [String] The name of the secret resource
    # value which is typically the version identifier for the value.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def show_async(secret_resource_name, secret_value_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'secret_resource_name is nil' if secret_resource_name.nil?
      fail ArgumentError, 'secret_value_resource_name is nil' if secret_value_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Secrets/{secretResourceName}/values/{secretValueResourceName}/list_value'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'secretResourceName' => secret_resource_name,'secretValueResourceName' => secret_value_resource_name},
          query_params: {'api-version' => api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::SecretValue.mapper()
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
