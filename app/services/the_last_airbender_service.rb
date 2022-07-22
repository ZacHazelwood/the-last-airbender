class TheLastAirbenderService
  def self.conn
    Faraday.new("https://last-airbender-api.herokuapp.com")
  end

  def self.get_last_airbender_data(uri)
    response = conn.get(uri)
    JSON.parse(response.body, symbolize_names: true)
  end
end
