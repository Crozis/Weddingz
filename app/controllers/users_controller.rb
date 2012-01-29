class UsersController < Devise::RegistrationsController
  prepend_view_path "app/views/devise"

  def create
    super
    # ...
  end

end