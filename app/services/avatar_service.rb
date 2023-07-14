class AvatarService
  def self.conn 
    Faraday.new("https://last-airbender-api.fly.dev/api/v1/characters/avatar")
  end

  def self.get_avatars
    response = conn.get 
    JSON.parse(response.body, symbolize_names: true)
  end
end