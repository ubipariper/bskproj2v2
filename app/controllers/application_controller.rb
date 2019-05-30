# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionHelper

  before_action :show_flash

  private

  def show_flash
    flash.now[:notice] = 'Found the about page!' if request.path == '/pages/about'
  end
end
