require_relative '../../db/config'



class Section  < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
end