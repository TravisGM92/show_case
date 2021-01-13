class ProjectsController < ApplicationController
  def index
    @projects = ProjectService.get_projects
  end

end
