require_relative "user"

class UsersBuilder

	attr_reader :input, :group

	def initialize(input , group)
		@input = input
		@group = group
	end 


	def add_user
      puts "Add user"
      name = gets.chomp.to_s
      puts "Add user expense "
      expense = gets.chomp.to_i
	  user = User.new(name, expense)
	  group.users << user
	end  


	def select_user
		puts " Select user to add expense"
		name = gets.chomp.to_s
		user = group.users.find { |user| user.name == name  }
        return "no user found" if user.empty?
	end 

	def list_user

		return "No users to list" if group.users.empty?

		puts "user list and its expenses"
		group.users&.each do |user|
			puts " #{user.name} has spent #{user.expense}"
		end 
	end
end 