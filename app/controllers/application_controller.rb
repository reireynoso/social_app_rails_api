class ApplicationController < ActionController::API

    private

    def encode_token(payload)
        JWT.encode(payload, generate_secret)
    end

    def auth_header
        request.headers["Authorization"]
    end

    def decode_token
        if auth_header
            token = auth_header.split(" ")[1]
            begin
                JWT.decode(token, generate_secret, true, algorithm: 'HS256')
            rescue
                []
            end
        end
    end

    def session_user
        decoded_hash = decode_token

        if !decoded_hash.empty?
            user_id = decoded_hash[0]["user_id"]
            @user = User.find_by(id: user_id)
        else
            nil
        end
    end

    def logged_in?
        !!session_user
    end

    def require_login
        render json: {errors: ["Please sign-up or login"]}, status: :unauthorized unless logged_in?
    end

    def generate_secret
        ENV["JWT_SECRET"]
    end
end
