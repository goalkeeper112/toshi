require 'spec_helper'

describe Toshi::Transaction do

  describe '.find' do
    it 'invokes a GET on the client and creates_one with response' do
      expect(Toshi::Client).to receive(:get).with('/transactions/1').and_return(key: 'val')
      expect(described_class).to receive(:create_one).with(key: 'val')
      described_class.find(1)
    end
  end

  describe '.unconfirmed' do
    it 'invokes a GET on the client and creates_one with response' do
      expect(Toshi::Client).to receive(:get).with('/transactions/unconfirmed').and_return([key: 'val', key:'val'])
      expect(described_class).to receive(:create_many).with([key: 'val', key: 'val'])
      described_class.unconfirmed
    end
  end
end
