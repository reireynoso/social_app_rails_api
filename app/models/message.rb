class Message < ApplicationRecord
    belongs_to :person_sending_the_message, class_name: "User", foreign_key: "sender_id"
    belongs_to :person_receving_the_message, class_name: "User", foreign_key: "receiver_id"
end
