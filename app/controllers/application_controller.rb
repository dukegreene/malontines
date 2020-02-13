class ApplicationController < ActionController::Base
  def root_redirect
    redirect_to malontines_path
  end
end
