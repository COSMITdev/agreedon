require_relative "production"

Rails.application.configure do
  config.action_mailer.asset_host = ("https://agree-me-staging.herokuapp.com")
  config.action_controller.asset_host = "https://agree-me-staging.herokuapp.com"
  config.action_mailer.default_url_options = { host: "agree-me-staging.herokuapp.com" }
  config.action_controller.default_url_options = { host: "agree-me-staging.herokuapp.com" }
end
