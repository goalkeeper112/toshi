module Toshi
  class Address < ApiResource
    class << self
      def find(identifier)
        response = client.get '/addresses/'+identifier.to_s
        create_one(response)
      end
      
      def unspent(identifier)
        response = client.get '/addressess/'+identifier.to_s+'/unspent_outputs'
        create_many(response)
      end
    end
  end
end
