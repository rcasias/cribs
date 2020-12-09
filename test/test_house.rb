require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def test_house_exists

    house = House.new("$400000", "123 sugar lane")

    assert_instance_of House, house
  end

  def test_rooms_array_exists

    house = House.new("$400000", "123 sugar lane")

    assert_equal house.rooms, []
  end

  def test_add_room
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    house.add_room(room_1)

    assert_equal house.rooms, [room_1]
  end
end
