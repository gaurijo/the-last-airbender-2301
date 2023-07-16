class NationMembers
  attr_reader :enemies, :allies
  def initialize(data)
    @enemies = data[:enemies]
    @allies = data[:allies]
  end
end