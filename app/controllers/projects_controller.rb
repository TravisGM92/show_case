# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects = ProjectService.github_projects
  end
end
