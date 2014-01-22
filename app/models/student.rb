require_relative '../../db/config'

#random test commit comment

class Student < ActiveRecord::Base
# implement your Student model here


  def name
    #"#{first_name} #{last_name}"
    first_name + " " + last_name
  end

  def age
    now = Date.today
    age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
    age
  end
end