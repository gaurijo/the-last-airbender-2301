class AvatarService
  def self.conn 
    Faraday.new("https://last-airbender-api.fly.dev/")
  end

  def self.get_avatars
    response = conn.get("/api/v1/characters/avatar")
    parsed = JSON.parse(response.body, symbolize_names: true)
    
  end
end