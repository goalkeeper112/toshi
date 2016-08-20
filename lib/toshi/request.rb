module Toshi
  class Request
    class << self
      def get(url)
        HTTParty.get(url)
      end
    end
  end
end
