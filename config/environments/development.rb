# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false

SERVER_URL = "http://localhost"
OUTBOUND_TOKEN_VOICE = "b24376e677c3e5418d3052347eb4e1e3f468207992332527a84decc93fee0a744dc2ca07b890b34e4947b13c"
OUTBOUND_TOKEN_MESSAGING = "6cfae8b242d7bf409e7374b77717e020c33a24c5e6a589624e0f51cbc86a24f4dc9ab1111798739b5979dffb"
