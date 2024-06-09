require_relative "groups_handler"

class SplitWise

	def initialize
		@groups_handler = GroupsHandler.new
	end 

	def open
	 puts "####################"
     puts "Welcome to SplitWise"
	 puts "####################"
	 @groups_handler.handle

	end 
end 