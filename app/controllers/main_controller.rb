class MainController < ApplicationController
	def loaddata
		for i in 0..1
			legs = Faker::Number.digit
			name = Faker::Lorem.word
			color = Faker::Commerce.color
			
			a = Animal.new(legs: legs, name: name, color: color)

			a.save
		end

		head :ok
	end

	def index
		@animals = Animal.all
	end
end
