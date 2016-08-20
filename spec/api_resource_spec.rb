require 'spec_helper'

describe Toshi::ApiResource do
  let(:attributes) do
    { size: 1, hash: '000fffaaabbb' }
  end

  describe '.create_one' do
    it 'creates a new instance of self using attributes' do
      expect(described_class).to receive(:new).with(attributes)
      described_class.create_one(described_class, attributes)
    end
  end
 
  describe '.create_many' do
    it 'creates an array of new instance of self using attributes' do
      expect(described_class).to receive(:new).twice
      described_class.create_many(described_class, [attributes, attributes])
    end
  end

  describe '#initialize' do
    it 'invokes from hash' do
      expect_any_instance_of(described_class).to receive(:from_hash).with(attributes)
      described_class.new(attributes)
    end
  end

  describe '#from_hash' do
    let(:instance) { described_class.new(attributes) }

    it 'creates instance variables/getters for all ' do
      attributes.each do |key, val|
        expect(instance).to respond_to(key)
        expect(instance.send(key.to_sym)).to eq(val)
      end
    end
  end
end
