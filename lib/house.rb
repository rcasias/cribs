
class House
  attr_reader :price,
              :address,
              :rooms,
              :area

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price.to_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    @rooms
  end

  def area
    house_area = 0
    @rooms.each do |room|
      house_area += room.area
    end
    house_area
  end

  def details
    details = {
      "price" => @price,
      "address" => @address
    }
  end

end
