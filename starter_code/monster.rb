class Monster
  attr_accessor :habitat, :threat_level
  @@count = 0
  Threat_level = [:low, :medium, :high, :midnight]

  def self.fight(attacker, defender)
    if Threat_level.index(attacker.threat_level) > Threat_level.index(defender.threat_level)
      'attacker wins!'
    else
      'defender wins!'
    end
  end

  def initialize(threat_level=:medium)
    @habitat = 'cave'
    @threat_level = threat_level
    puts "RAWR!"
    @@count += 1
    puts "there are #{@@count} monsters"
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

  def get_dangerous
    # ruby version of a switch statement is case
    case @threat_level
      when :low
        @threat_level = :medium
      when :medium
        @threat_level = :high
      when :high
        @threat_level = :midnight
      when :midnight
        :midnight
    end
  end
end

class Zombie < Monster
  def initialize(threat_level=:medium)
    super
    @habitat = 'graveyard'
  end
end

class Werewolf < Monster
  def initialize(threat_level=:medium)
    super
    @threat_level = :low
  end
end

module Flying
  def Fly
  puts "it soars across the sky"
  end
end

class Vampire < Monster
  include Flying
end
