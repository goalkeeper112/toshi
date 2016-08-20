module Toshi
  class Block < ApiResource
    class << self
      def all
        response = client.get '/blocks'
        create_many(response)
      end

      def find(identifier)
        response = client.get '/blocks/'+identifier.to_s
        create_one(response)
      end

      def latest
        response = client.get '/blocks/latest'
        create_one(response)
      end
    end

    def transactions
      response = client.get '/blocks/'+hash+'/transactions'
      self.class.create_one(response)
    end
  end
end
