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
