require 'spec_helper'

describe Occupant do
  let(:occupant) { Occupant.new("Ringo", "Starr")}

  it "has a reader for first_name" do
    expect(occupant.first_name).to eq("Ringo")
  end

  it "has a reader for last_name" do
    expect(occupant.last_name).to eq("Starr")
  end
end
