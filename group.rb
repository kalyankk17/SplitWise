class Group

	attr_accessor :name , :users

	def initialize(name)
		@name = name
		@users = []
	end
end 