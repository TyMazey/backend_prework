#LaunchSchool MyCar exercise using the solutions
class MyCar
  attr_accessor :color
  attr_reader :year, :model
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You speed up #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You slow down #{number} mph."
  end

  def current_speed
    puts "You are going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "You take the keys out of the ignition."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def car_info
    puts "You get into a #{year} #{color} #{model}."
  end
end

subaru = MyCar.new(2013, 'Grey', 'WRX')
subaru.car_info
subaru.spray_paint('Matte Black')
subaru.speed_up(50)
subaru.current_speed
subaru.brake(50)
subaru.current_speed
subaru.shut_down
