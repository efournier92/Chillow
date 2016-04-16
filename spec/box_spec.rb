require 'spec_helper'

describe Box do
  let(:occupant) { Occupant.new("Ringo", "Starr") }
  let(:box) { Box.new(occupant)}

  it "has a reader for owner" do
    expect(box.owner.first_name).to eq("Ringo")
  end

end
