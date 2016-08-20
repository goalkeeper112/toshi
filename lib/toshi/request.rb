module Toshi
  class Request
    class << self
      def get(url)
        HTTParty.get(url).parsed_response
      end
    end
  end
end
