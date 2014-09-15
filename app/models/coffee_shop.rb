class CoffeeShop < ActiveRecord::Base
	validates :name, presence: true
end
