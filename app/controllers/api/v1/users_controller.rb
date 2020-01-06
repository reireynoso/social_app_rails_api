class Api::V1::UsersController < ApplicationController

    def create

    end

    private

    def user_params
        params.permit(:username, :password, :photo_url_string)
    end
end
