require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddColumns < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.string :name
      t.string :address
    end
  end
end