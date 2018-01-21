module Api::V1
  class UsersController < BaseController

    # GET /v1/users
    def index
      respond_with Rails.cache.fetch("users") { User.limit(40) }
    end

    # GET /v1/users/{id}
    def show
      respond_with User.find(params[:id])
    end

  end
end
