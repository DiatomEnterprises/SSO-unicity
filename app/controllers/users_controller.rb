class UsersController < ApplicationController

  def get_users
    return render_401 unless current_user

    render json: {
      payload: {
        users: User.all
      }
    }
  end

  private

  def render_401
    render json: { errors: ['not authorized'] }, status: 401
  end
end
