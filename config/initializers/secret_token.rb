# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Auth::Application.config.secret_key_base = 'f37cf4eacb2a55d0a9cd060fb69e30e43273bda14c502fb7345ae351cbbe9d359e27bafb1bd747a60fdcd2ecdaf934c044fe5d884db47f7a41a7517ed58155ee'
