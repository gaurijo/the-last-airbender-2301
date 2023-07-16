class Avatar 
  attr_reader :name, :weapon, :affiliation, :photoUrl
  def initialize(data)
    @name = data[:name]
    @weapon = data[:weapon]
    @affiliation = data[:affiliation]
    @photoUrl = data[:photoUrl]
  end
end