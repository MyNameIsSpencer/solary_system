require_relative 'stars'


puts "|+|+|+|+|+|+|+|+|+|+|+|"

class System

  def initialize
    bodies = []
  end

  def add(celestial_body)

  end



  def total_mass
    weigh_in = 0

  end


end





puts "mass is in hexatons unless otherwise stated"
record_baby = System.new
earth = Planet.new('Earth', 6000, 24, 365)
sun = Star.new('Sun', 2000000000000, 'Gallup Class')
my_moon = Moon.new('My Moon', 70, 30, 'Earth')
venus = Planet.new('Venus', 4500, 15, 150)
death_star = Moon.new('Death Star', 20, 15, 'Venus')
chameleon = Planet.new('Chalmeleon', 100000, 100, 1000)
zippy = Moon.new('Zippy', 20, 20, 'Chameleon')
cannonball = Moon.new('Cannon Ball', 10, 50, 'Chameleon')
forbode = Star.new('Forbode', 50000000000, 'Dark Class')

puts System.bodies.inspect
