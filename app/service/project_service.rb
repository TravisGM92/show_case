class ProjectService

  def self.conn
    Faraday.new('https://api.github.com')
  end

def self.get_projects
  username = 'TravisGM92'
  response = conn.get("/users/#{username}/repos")
    JSON.parse(response.body, symbolize_names: true)
  end
  response.each{ |proj| Project.new(proj)}
end
