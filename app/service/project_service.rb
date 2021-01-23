class ProjectService

  def self.conn
    Faraday.new('https://api.github.com')
  end

  def self.get_projects
    if Project.all == [] || Date.today > Project.first.created_at
      github_projects_api_call
    else
      Project.all
    end
  end

  def self.github_projects_api_call
    Project.delete_all
    username = 'TravisGM92'
    data = JSON.parse(conn.get("/users/#{username}/repos?per_page=100").body, symbolize_names: true)
    data.each do |project|
      if !project[:description].nil?
        Project.create!({name: project[:name], description: project[:description], url: project[:url], language: project[:language]})
      end
    end
    Project.all
  end
end