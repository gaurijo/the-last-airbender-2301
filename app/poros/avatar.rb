class Avatar 
  attr_reader :name, :weapon, :affiliation
  def initialize(data)
    @name = data[:name]
    @weapon = data[:weapon]
    @affiliation = data[:affiliation]
  end
end