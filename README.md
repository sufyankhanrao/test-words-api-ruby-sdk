
# Getting Started with Words API

## Introduction

Words API lets you retrieve information about English words, including definitions, synonyms, rhymes, pronunciation, syllables, and frequency of usage. It also can tell you about relationships between words, for instance that “math” has categories like “algebra” and “geometry”, or that a “finger” is part of a “hand”.

## Install the Package

Install the gem from the command line:

```ruby
gem install test-words-api-client-sdk -v 1.0.2
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'test-words-api-client-sdk', '1.0.2'
```

For additional gem details, see the [RubyGems page for the test-words-api-client-sdk gem](https://rubygems.org/gems/test-words-api-client-sdk/versions/1.0.2).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `custom_header_authentication_credentials` | [`CustomHeaderAuthenticationCredentials`](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/auth/custom-header-signature.md) | The credential object for Custom Header Signature |

The API client can be initialized as follows:

```ruby
client = WordsApi::Client.new(
  custom_header_authentication_credentials: CustomHeaderAuthenticationCredentials.new(
    x_rapid_api_key: 'X-RapidAPI-Key'
  )
)
```

## Authorization

This API uses the following authentication schemes.

* [`RapidAPI-Key (Custom Header Signature)`](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/auth/custom-header-signature.md)

## List of APIs

* [AP Is](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/controllers/ap-is.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/http-response.md)
* [HttpRequest](https://www.github.com/sufyankhanrao/test-words-api-ruby-sdk/tree/1.0.2/doc/http-request.md)

