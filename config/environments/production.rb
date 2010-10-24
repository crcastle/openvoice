# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# See everything in the log (default is :info)
# config.log_level = :debug

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

# Enable threaded mode
# config.threadsafe!

SERVER_URL = "http://localhost"
OUTBOUND_TOKEN_VOICE = "b24376e677c3e5418d3052347eb4e1e3f468207992332527a84decc93fee0a744dc2ca07b890b34e4947b13c"
OUTBOUND_TOKEN_MESSAGING = "6cfae8b242d7bf409e7374b77717e020c33a24c5e6a589624e0f51cbc86a24f4dc9ab1111798739b5979dffb"