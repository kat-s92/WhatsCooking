class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :shopping_cart
  has_many :saved_chefs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :saved_recipes
end
