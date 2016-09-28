module Toshi
  class Address < ApiResource
    class << self
      def find(identifier)
        response = client.get '/addresses/'+identifier.to_s
        create_one(response)
      end
      
      def unspent(identifier)
        puts identifier.to_s
        response = client.get '/addresses/'+identifier.to_s+'/unspent_outputs/'
        create_many(response)
      end
    end
  end
end
