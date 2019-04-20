class SprintController < ApplicationController
  def show; end

  def show_first_role
    Role.first.name
  end
  helper_method :show_first_role
end
