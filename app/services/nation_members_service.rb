class NationMembersService
  def self.conn 
    Faraday.new("https://last-airbender-api.fly.dev/")
  end

  def self.get_members(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end