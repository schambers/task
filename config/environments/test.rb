# Settings specified here will take precedence over those in config/environment.rb

# The test environment is used exclusively to run your application's
# test suite.  You never need to work with it otherwise.  Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs.  Don't rely on the data there!
config.cache_classes = true
config.whiny_nils = true

config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false
config.action_view.cache_template_loading            = true

config.action_controller.allow_forgery_protection    = false
config.action_mailer.delivery_method = :test

config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"

