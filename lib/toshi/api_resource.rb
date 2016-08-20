module Toshi
  class ApiResource

    class << self
      def create_one(attributes)
        self.new(attributes)
      end

      def create_many(collection)
        collection.map { |attr| self.new(attr) }
      end

      def client
        Toshi::Client
      end
    end

    def initialize(attributes = {})
      from_hash(attributes)
    end

    def from_hash(attributes)
      attributes.each do |key, val|
        instance_variable_set("@#{key}", val)
        self.class.send(:define_method, key) do
          instance_variable_get "@#{key}"
        end
      end
    end

    def client
      Toshi::Client
    end
  end
end
