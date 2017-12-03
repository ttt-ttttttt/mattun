class Talk < ApplicationRecord
  validates :name ,{presence:true , uniqueness:true}

  has_many :talk_users
  has_many :users, through: :talk_users
  has_many :messages
  accepts_nested_attributes_for :talk_users
end
