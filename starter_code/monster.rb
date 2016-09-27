class Monster
  attr_accessor :habitat, :threat_level
  @@count = 0
  Threat_level = [:low, :medium, :high, :midnight]
  def initialize(threat_level=:medium)
    @habitat = 'cave'
    @threat_level = threat_level
    puts "RAWR!"
    @@count += 1
    if !(Threat_level.include? (@threat_level))
      raise 'INVALID THREAT LEVEL'
    end
  end
  def habitat (habitat)
    @habitat == habitat
  end

  def self.count
    @@count
  end
end


  # getters and setters for instance variables

  # class variable for count

  # class instance variable for class description

  # class method getter for @@count class variable

  # class method getter for @class_description class instance variable

  # initial behavior

  # habitat? instance method

  # get_dangerous instance method

  # fight class method

# Zombie class

  # zombie version of class_description
  
  # initial behavior and values

# Werewolf class

  # werewolf version of class_description

  # initial behavior and values

  # update_threat_level instance method

# Flying module

  #fly method

# Vampire class

  # vampire class description

  # Flying module included
