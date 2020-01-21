class Api::V1::MessagesController < ApplicationController

    def create

    end

    private 

    def message_params
        params.permit(:sender_id, :receiver_id, :content)
    end
end
