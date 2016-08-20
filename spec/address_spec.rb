require 'spec_helper'

describe Toshi::Address do

  describe '.find' do
    it 'invokes a GET on the client and creates_one with response' do
      expect(Toshi::Client).to receive(:get).with('/addresses/123').and_return(key: 'val')
      expect(described_class).to receive(:create_one).with(key: 'val')
      described_class.find(123)
    end
  end
end
