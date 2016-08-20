require 'spec_helper'

describe Toshi::Block do

  before do
    @client = double()
    @block = described_class.new(@client)
  end

  describe '#all' do
    it 'invokes a GET on the client' do
      expect(@client).to receive(:get).with('/blocks')
      @block.all
    end
  end

  describe '#find_by_height' do
    it 'invokes a GET on the client' do
      expect(@client).to receive(:get).with('/blocks', height: 1)
      @block.find_by_height(1)
    end
  end

  describe '#find_by_hash' do
    it 'invokes a GET on the client' do
      expect(@client).to receive(:get).with('/blocks', hash: 1)
      @block.find_by_hash(1)
    end
  end

  describe '#latest' do
    it 'invokes a GET on the client' do
      expect(@client).to receive(:get).with('/blocks/latest')
      @block.latest
    end
  end
end
