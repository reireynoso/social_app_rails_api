class Api::V1::SessionsController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {errors: ["Invalid Credentials"]}, status: :not_acceptable
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: ["No user logged in"]}
        end
    end
end
