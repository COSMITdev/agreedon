require_relative "production"

Rails.application.configure do
  if ENV.fetch("HEROKU_APP_NAME", "").include?("staging-pr-")
    config.action_mailer.asset_host = ("https://" + ENV["HEROKU_APP_NAME"] + ".herokuapp.com")
    config.action_mailer.default_url_options = { host: ENV["HEROKU_APP_NAME"] + ".herokuapp.com" }
    config.action_controller.default_url_options = { host: ENV["HEROKU_APP_NAME"] + ".herokuapp.com" }
  else
    config.action_mailer.asset_host = ("https://" + ENV["HEROKU_APP_NAME"]+ "-staging" + ".herokuapp.com")
    config.action_mailer.default_url_options = { host: ENV["HEROKU_APP_NAME"]+ "-staging" + ".herokuapp.com" }
    config.action_controller.default_url_options = { host: ENV["HEROKU_APP_NAME"]+ "-staging" + ".herokuapp.com" }
  end
end
