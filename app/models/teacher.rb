require_relative '../../db/config'



class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true
  has_many :sections
  has_many :students, :through => :sections
end