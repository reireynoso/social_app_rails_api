class Api::V1::MessagesController < ApplicationController

    def create
        # byebug
        message = Message.create(message_params)
        # byebug
        ActionCable.server.broadcast('feed_channel', message)
        render json: {user: UserSerializer.new(message.person_sending_the_message)}
    end

    private 

    def message_params
        params.permit(:sender_id, :receiver_id, :content)
    end
end
