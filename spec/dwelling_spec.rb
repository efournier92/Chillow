require 'spec_helper'

describe Dwelling do
  let(:dwelling) { Dwelling.new('123 Fake St', 'Daytona', 'FL', '01234') }

  it 'has a reader for address' do
    expect(dwelling.address).to eq('123 Fake St')
  end

  it 'has a reader for city' do
    expect(dwelling.city).to eq('Daytona')
  end

  it 'has a reader for state' do
    expect(dwelling.state).to eq('FL')
  end

  it 'has a reader for zip' do
    expect(dwelling.zip).to eq('01234')
  end
end
