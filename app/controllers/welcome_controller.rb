# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index; end

  def about_me; end

  def skills; end

  def skills_mvc
    @teams = Team.all
  end

  def skills_crud; end

  def contact; end
end
