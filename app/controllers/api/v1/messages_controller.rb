class Api::V1::MessagesController < ApplicationController

    def create

    end

    private 

    def message_params
        params.permit(:)
    end
end
