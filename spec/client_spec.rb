require 'spec_helper'

describe Toshi::Client do
  let(:client) { described_class }
  let(:base) { 'http://bitcoin.toshi.io/api/v0' }

  it 'delegates get requests to Request class' do
    expect(Toshi::Request).to receive(:get).with(base+'/path')
    client.get('/path')
  end
end
