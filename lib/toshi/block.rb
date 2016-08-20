module Toshi
  class Block < ApiResource
    class << self
      def all
        response = client.get '/blocks'
        create_many(self, response)
      end

      def find(identifier)
        response = client.get '/blocks/'+identifier.to_s
        create_one(self, response)
      end

      def latest
        response = client.get '/blocks/latest'
        create_one(self, response)
      end

      def client
        Client
      end
    end
  end
end
