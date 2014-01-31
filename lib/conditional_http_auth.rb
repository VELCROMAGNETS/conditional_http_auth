require "conditional_http_auth/version"

module ConditionalHttpAuth

protected

  def http_authenticate_if_needed
    if http_auth_username.present? && http_auth_password.present?
      authenticate_or_request_with_http_basic(ENV['HTTP_AUTH_REALM'] || "Application") do |name, password|
        name == http_auth_username && password == http_auth_password
      end
    end
  end

  def http_auth_username
    ENV['HTTP_AUTH_USERNAME']
  end

  def http_auth_password
    ENV['HTTP_AUTH_PASSWORD']
  end

end
