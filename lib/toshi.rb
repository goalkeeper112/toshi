require "toshi/version"

require "httparty"

require "toshi/block"
require "toshi/request"

module Toshi
  class Client
    attr_reader :base_url

    def initialize
      @base_url = "http://bitcoin.toshi.io/api/v0"
    end

    def get(path)
      url = url_for(path)
      Toshi::Request.get(url)
    end

    def blocks
      Toshi::Block.new(self)
    end

    private
    def url_for(path)
      @base_url + path
    end
  end
end
