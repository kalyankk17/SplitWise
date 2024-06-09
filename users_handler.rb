require_relative "users_builder"
require_relative "users_settlements"

class UsersHandler


	attr_reader :group, :users_builder, :users_settlements

	def initialize(group)
		@group = group
		@users_builder = UsersBuilder
		@users_settlements = UsersSettlements
	end 

	def handle
		loop do
			puts "####################"
		    puts "Welcome to #{group.name}"
			puts "####################"

			puts "Press - to list the users details"

			puts "Press + to add a user"

			puts "Press ^ to select a user to add expense"

			puts "press ? to show the pending settlements "

			
			handler

		end
	end 


	private


	def handler
		begin
		  input = gets.chomp.to_s

		  case input
		    when "-"
		     	users_builder.new(input,group).list_user
		    when "+" 
		    	users_builder.new(input,group).add_user
		    when "^"
		    	users_builder.new(input,group).select_user
		    when "?"
		        users_settlements.new(group).show	
		    else
		    	"Please enter a valid input"
		  end 	
		rescue  => e
			puts "Error"
			 puts e.message
            puts e.backtrace
		end

		
	end 
end 