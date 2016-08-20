module Toshi
  class Block
    def initialize(client)
      @client = client
    end

    def all
      @client.get '/blocks'
    end

    def find_by_height(height)
      @client.get "/blocks/#{height}"
    end

    def find_by_hash(hash)
      @client.get "/blocks/#{hash}"
    end

    def latest
      @client.get '/blocks/latest'
    end
  end
end
