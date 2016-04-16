require 'spec_helper'

describe House do
  let(:house) {House.new('500 Main St', 'LA', 'CA', '09876', 400000)}
  it 'inherits properties from dwelling' do
    expect(house.city).to eq('LA')
  end
  it 'has a reader for asking_price' do
    expect(house.asking_price).to eq(400000)
  end
end
