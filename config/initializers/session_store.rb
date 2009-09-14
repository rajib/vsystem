# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vsystem_session',
  :secret      => 'ed7f777132aa43a01cfadb0e1a5283ee5410b6743053eb59609202c394277d5188d437963e752dd89d544a666373bf14c48c1f5b542c21315f1cc8bdc2daecbd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
