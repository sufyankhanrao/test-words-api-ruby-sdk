# words_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WordsApi
  #  words_api client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    # Access to ap_is controller.
    # @return [APIsController] Returns the controller instance.
    def ap_is
      @ap_is ||= APIsController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      logging_configuration: nil, environment: Environment::PRODUCTION,
      x_rapid_api_key: nil, custom_header_authentication_credentials: nil,
      config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    logging_configuration: logging_configuration,
                    environment: environment, x_rapid_api_key: x_rapid_api_key,
                    custom_header_authentication_credentials: custom_header_authentication_credentials
                  )
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[RapidAPI-Key].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['RapidAPI-Key'] = CustomHeaderAuthentication.new(
        http_client_config.custom_header_authentication_credentials
      )
    end
  end
end
