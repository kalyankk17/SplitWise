class UsersSettlements
  attr_reader :group, :group_total , :individual_total

  def initialize(group)
    @group = group

    @group_total = 0
    @individual_total = 0
  end 

  def show
    calculate_total
    @group.users.each_with_index do |user|
      calculate(user)
    end
  end 

  private 

  def calculate_total
    @group.users.each_with_index do |user , index|
      @group_total += user.expense
      @individual_total += user.expense / @group.users.size
    end
  end 

  def calculate(user)
    if individual_total < user.expense
    	puts " #{user.name} should get back #{user.expense - individual_total}"
    elsif individual_total > user.expense 
    	puts "#{user.name} owes #{individual_total - user.expense}"
    else
    	puts "#{user.name} settlement is done"
    end 
  end                       

  # def logic_explanation
  # 	# user1 = 150 = 50   = 150 - 105 = +45

  # 	# user2 = 75 = 25    = 105-75 = 30

  # 	# user3 = 90 = 30     = 105 - 90 = 15
  #                 #105
  # end 
end