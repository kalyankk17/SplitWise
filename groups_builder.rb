require_relative 'group'
require_relative 'users_handler'

class GroupsBuilder

	attr_reader :groups

   def initialize
   	@groups = []
   end

   def create_group
   	 puts "Enter Group name"
	 group_name = gets.chomp.to_s
	 group = Group.new(group_name) 
     @groups << group
	end 

	def list_groups
		return "no groups to list" if @groups.empty?
		puts "Available Groups"
        @groups.each do |group|
        	puts group.name
        end 
        select_group
	end 

	def select_group
	  puts "Select a group"
      group_name = gets.chomp.to_s
      group = groups.find{|group| group.name == group_name}
      return "please select a valid input" unless group
      UsersHandler.new(group).handle 
	end 
end 