# typed: strong
require "httparty"
require "sorbet-runtime"
require "rockthevote/version"
require "rockthevote/client"

module Rocky
  class Error < StandardError; end
  extend T::Sig
end
