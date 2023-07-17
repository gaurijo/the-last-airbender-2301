class NationMembers
  attr_reader :enemies, :allies, :name, :photoUrl
  def initialize(data)
    @enemies = data[:enemies]
    @allies = data[:allies]
    @name = data[:name]
    @photoUrl = data[:photoUrl]
  end
end