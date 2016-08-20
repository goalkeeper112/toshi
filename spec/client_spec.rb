require 'spec_helper'

describe Toshi::Client do
  let(:client) { described_class.new }
  let(:base) { 'http://bitcoin.toshi.io/api/v0' }

  it 'sets base url on instantiation' do
    expect(client.base_url).to eq(base)
  end

  it 'delegates GET requests to Request class' do
    expect(Toshi::Request).to receive(:get).with('/path', param: 1)
    client.get('/path', param: 1)
  end

  it 'delegates blocks to Block class' do
    expect(Toshi::Block).to receive(:new).with(client)
    client.blocks
  end
end
