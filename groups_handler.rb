require_relative 'groups_builder'

class GroupsHandler

   def initialize
      @builder = GroupsBuilder.new
      @groups = []
   end

   def handle
   	loop do 
       puts "Press + to create a group"
       puts "Press - to list the added groups"

       handler 
      end
   end 


    private


   def handler
      begin
         input = gets.chomp.to_s
         case input
         when "+"
             @builder.create_group
         when "-"
             @builder.list_groups
         else 
               puts "invalid input"
         end 
      rescue => e
         puts e
      end
      

   end 
end 