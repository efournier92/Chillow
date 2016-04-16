class House < Dwelling
  attr_reader :asking_price

  def initialize(address, city, state, zip, asking_price)
    super(address, city, state, zip)
    @asking_price = asking_price
  end
end
