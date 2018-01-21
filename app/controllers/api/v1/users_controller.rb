module Api::V1
  class UsersController < BaseController

    # GET /v1/users
    def index
      respond_with User.all
    end

    # GET /v1/users/{id}
    def show
      respond_with User.find(params[:id])
    end

  end
end
