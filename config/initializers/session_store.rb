# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tasks_session',
  :secret      => '6eaec5c5b663c6a79beb648e2c4f08da9fd51c9dd8982024f7941479b986645db62c0a3257479aa1b9b8af2237212f222eb4f169829b34ed0cbf49383b674930'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
