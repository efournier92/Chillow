class Truck

  attr_reader :max_boxes, :boxes

  def initialize(max_boxes)
    @max_boxes = max_boxes
    @boxes = []
  end

  def full?
    if boxes.size <= 30
      false
    else
      true
    end
  end

  def add_box(owner)
    unless boxes.size == max_boxes
      boxes << Box.new(owner)
    end
  end

  def remove_box
    unless boxes.size == 0
      boxes.pop
    end
  end

  def unload_occupants_boxes(occupant)
    new_array = []
    new_array = boxes.reject { |box| box.owner == occupant }
    @boxes = new_array
  end
end
