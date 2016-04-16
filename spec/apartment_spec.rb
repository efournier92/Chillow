require 'spec_helper'

describe Apartment do
  let(:apartment) { Apartment.new('123 Fake St', 'LA', 'CA', '09876', 2000,
    '02-01-2016', '04-01-2016') }

  it 'inherits properties from dwelling' do
    expect(apartment.city).to eq('LA')
  end

  it 'has a reader for rent_per_month' do
    expect(apartment.rent_per_month).to eq(2000)
  end

  it 'has a reader for lease_start_date' do
    expect(apartment.lease_start_date).to eq('02-01-2016')
  end

  it 'has a reader for lease_end_date' do
    expect(apartment.lease_end_date).to eq('04-01-2016')
  end
end
