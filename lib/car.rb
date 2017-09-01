class Car
#let(:car) { instance_double('Driver') }
attr_accessor :vehicle

  def initialize
    @vehicle = { wheel: 4, color: 'red', max_speed: 220 }
  end

  def paint(color)
    @vehicle[:color] = color
  end

  def driver(driver)
    @vehicle[:driver] = driver
  end
end
