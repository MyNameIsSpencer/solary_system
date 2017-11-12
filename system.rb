
puts "|+|+|+|+|+|+|+|+|+|+|+|"

class System

  def initialize
    @bodies = []
  end

  def add(celestial_body)
    if !@bodies.include?(celestial_body)
      @bodies << celestial_body
    else
      puts "error"
    end
  end

  def bodies_reader
    return @bodies
  end


  def total_mass
    weigh_in = 0
    @bodies.each {|celest|  weigh_in += celest.masser}
    return weigh_in
  end


end


class Body
  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def namer
    @name
  end

  def masser
    @mass
  end

end



class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end


class Planet < Body
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end



class Moon < Body
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end





puts "mass is in hexatons unless otherwise stated"

record_baby = System.new
earth = Planet.new('Earth', 6000, 24, 365)
sun = Star.new('Sun', 2000000000000, 'Gallup Class')
my_moon = Moon.new('My Moon', 70, 30, earth)
venus = Planet.new('Venus', 4500, 15, 150)
death_star = Moon.new('Death Star', 20, 15, venus)
chameleon = Planet.new('Chalmeleon', 100000, 100, 1000)
zippy = Moon.new('Zippy', 20, 20, chameleon)
cannonball = Moon.new('Cannon Ball', 10, 50, chameleon)
forbode = Star.new('Forbode', 50000000000, 'Dark Class')

record_baby.add(earth)
record_baby.add(sun)
record_baby.add(my_moon)
record_baby.add(venus)
record_baby.add(death_star)
record_baby.add(chameleon)
record_baby.add(zippy)
record_baby.add(cannonball)
record_baby.add(forbode)

puts record_baby.inspect

puts '=' * 50


puts "The total mass of the solar system is #{record_baby.total_mass} hexatons"
