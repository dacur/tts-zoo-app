class Animal
	include Mongoid::Document

	field :legs, type: String
	field :name, type: String
	field :color, type: String

end