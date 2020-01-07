class User < ApplicationRecord

    has_secure_password
    validates_uniqueness_of :username
    validates_presence_of :username
    validates_presence_of :password_digest

    has_many :posts, :dependent => :delete_all
    
    has_many :followed_users, foreign_key: :follower_id, class_name: "Follow"
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: "Follow"
    has_many :followers, through: :following_users

end
