module Toshi
  class Client
    @@base_url = "http://bitcoin.toshi.io/api/v0"

    class << self
      def get(path)
        url = url_for(path)
        Toshi::Request.get(url)
      end

      def url_for(path)
        @@base_url + path
      end
    end
  end
end
