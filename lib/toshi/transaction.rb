module Toshi
  class Transaction < ApiResource
    class << self
      def find(identifier)
        response = client.get '/transactions/'+identifier.to_s
        create_one(response)
      end

      def unconfirmed
        response = client.get '/transactions/unconfirmed'
        create_many(response)
      end
    end
  end
end
