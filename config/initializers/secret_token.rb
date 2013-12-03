# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
#SampleApp::Application.config.secret_token = '496e94b8b9d4bae95d1a93c7d4182ddd90d93477e29e3afb1ee6b374961426e77af823fe2df0d4cb23520451533a9c9498e1b0013cae6edba5a011072d015213'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token file
    token = SecureRandom.hex(64)
    File.write(token_file,token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token