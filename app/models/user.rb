class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

scope :all_expect, ->(user) { where.not(:id => user) }
# Ex:- scope :active, -> {where(:active => true)}
end