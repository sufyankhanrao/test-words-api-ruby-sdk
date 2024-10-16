
# Custom Header Signature



Documentation for accessing and setting credentials for RapidAPI-Key.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| X-RapidAPI-Key | `String` | This is an API key from RapidAPI. | `x_rapid_api_key` |



**Note:** Auth credentials can be set using named parameter for any of the above credentials (e.g. `x_rapid_api_key`) in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = WordsApi::Client.new(
  custom_header_authentication_credentials: CustomHeaderAuthenticationCredentials.new(
    x_rapid_api_key: 'X-RapidAPI-Key'
  )
)
```


