require_relative '../../db/config'

#random test commit comment

class Student < ActiveRecord::Base
# implement your Student model here

#validates theory: if there is an s, we are trying to validate a specific field?
#validate: if there is not an S, we are trying to validate the whole thing in general based on a criteria?
validates :email, :uniqueness => true
validates_format_of :email,
   :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
   :on => :create
validate :age_check?

# validates_format_of :phone,
#    :with => /(?:\+?|\b)[0-9]{10}\b/,
#    :on => :create


  def name
    #"#{first_name} #{last_name}"
    first_name + " " + last_name
  end

  def age
    now = Date.today
    age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
    age
  end

  def age_check?
    age >= 5
  end
end