class Api::V1::FollowsController < ApplicationController

    def create 
        @follow = Follow.create(follow_params)
        
    end

    def destroy
        
    end

    private

    def follow_params
        params.permit(:follower_id, :followee_id)
    end

end
