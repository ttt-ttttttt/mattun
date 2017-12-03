class User < ApplicationRecord

  validates :name ,{presence:true , uniqueness:true}
  validates :password ,{presence:true}

  has_many :talk_users
  has_many :talks, through: :talk_users
  has_many :messages
end
