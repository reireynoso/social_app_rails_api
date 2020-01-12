class Api::V1::FollowsController < ApplicationController

    def follow_action
        follow = Follow.find_by(follower_id: params[:follower_id], followee_id: params[:followee_id])
        if follow
            follow.destroy
        else
            follow = Follow.create(follow_params)
        end
        # byebug
        render json: {user: UserSerializer.new(follow.person_doing_the_following)}
    end

    private

    def follow_params
        params.permit(:follower_id, :followee_id)
    end

end
