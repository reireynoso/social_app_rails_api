class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :followees, :followers, :sent_messages, :received_messages

  # attribute :followers do |follower|
  #   {
  #     username: follower.username
  #   }
  # end

  # attribute :followees do |followee|
  #   {
  #     username: followee.username
  #   }
  # end
end
