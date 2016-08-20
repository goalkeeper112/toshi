require "toshi/version"

require "toshi/block"
require "toshi/request"

module Toshi
  class Client
    attr_reader :base_url

    def initialize
      @base_url = "bitcoin.toshi.io/api/v0"
    end

    def get(path, params = nil)
      Toshi::Request.get(path, params)
    end

    def blocks
      Toshi::Block.new(self)
    end
  end
end
