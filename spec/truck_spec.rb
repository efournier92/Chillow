require 'spec_helper'

describe Truck do
  let(:occupant) { Occupant.new('Ringo', 'Starr') }
  let(:box) { Box.new(occupant)}
  let(:truck) { Truck.new(30) }

  it 'has a reader for max_boxes' do
    expect(truck.max_boxes).to eq(30)
  end

  it 'initializes an empty array for boxes' do
    expect(truck.boxes).to eq([])
  end

  it 'has a method to check if truck is full' do
    expect(truck.full?).to eq(false)
    31.times do
      truck.boxes << Box.new(occupant)
    end
    expect(truck.full?).to eq(true)
  end

  it 'has a method to add one box' do
    truck.add_box(occupant)
    expect(truck.boxes.size).to eq(1)
  end

  it 'has a method to remove one box' do
    31.times do
      truck.boxes << Box.new(occupant)
    end
    truck.remove_box
    expect(truck.boxes.size).to eq(30)
  end

  let(:occupant_01) { Occupant.new('Ringo', 'Starr') }
  let(:occupant_02) { Occupant.new('Bob', 'Dylan') }

  it 'has a method to remove all boxes with a certain owner' do
    5.times do
      truck.boxes << Box.new(occupant_01)
    end

    4.times do
      truck.boxes << Box.new(occupant_02)
    end

    truck.unload_occupants_boxes(occupant_01)
    expect(truck.boxes.size).to eq(4)
  end
end
