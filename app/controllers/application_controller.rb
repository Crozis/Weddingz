class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
    if current_user.is_client?
      wedding_path(current_user.wedding)
    else
      wedding_path
    end
  end
end
