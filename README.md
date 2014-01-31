# ConditionalHttpAuth

HTTP basic auth for staging environments. Can be enabled by setting environment variables.

## Installation

Add this line to your application's Gemfile:

    gem 'conditional_http_auth'

And then execute:

    $ bundle

## Usage

```ruby
include ConditionalHttpAuth
before_action :http_authenticate_if_needed
```

Authentication will be required if and only if the environment variables `HTTP_AUTH_USERNAME` and `HTTP_AUTH_PASSWORD` are set.

## See Also

* [`Rack::Auth::Basic`](https://github.com/rack/rack/blob/master/lib/rack/auth/basic.rb)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/conditional_http_auth/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
