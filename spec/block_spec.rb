require 'spec_helper'

describe Toshi::Block do

  describe '.all' do
    it 'invokes a GET on the client and creates_many with response' do
      expect(Toshi::Client).to receive(:get).with('/blocks').and_return([1,2])
      expect(described_class).to receive(:create_many).with([1,2])
      described_class.all
    end
  end

  describe '.find' do
    it 'invokes a GET on the client and creates_one with response' do
      expect(Toshi::Client).to receive(:get).with('/blocks/1').and_return(key: 'val')
      expect(described_class).to receive(:create_one).with(key: 'val')
      described_class.find(1)
    end
  end

  describe '.latest' do
    it 'invokes a GET on the client and creates_one with response' do
      expect(Toshi::Client).to receive(:get).with('/blocks/latest').and_return(key: 'val')
      expect(described_class).to receive(:create_one).with(key: 'val')
      described_class.latest
    end
  end

  describe '#transactions' do
    let(:block) { described_class.new(hash: '000fff') }

    it 'invokes a GET on the client and creates_one with response' do
      expect(Toshi::Client).to receive(:get).with('/blocks/000fff/transactions').and_return(key: 'val')
      expect(described_class).to receive(:create_one).with(key: 'val')
      block.transactions
    end
  end
end
