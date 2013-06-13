# Generate a base64-encoded string
# origin: http://stackoverflow.com/questions/15454014/url-or-base64-encode-strings-in-compass-sass

require 'base64'

module Sass::Script::Functions
  def base64_encode(string)
    assert_type string, :String
    Sass::Script::String.new(Base64.encode64(string.value))
  end
  declare :base64Encode, :args => [:string]
end
