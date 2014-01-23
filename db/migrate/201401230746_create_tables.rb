require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTables < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date   :birthday
      t.string :email
      t.string :phone
      t.timestamps
    end

    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.timestamps
    end

    create_table :sections do |t|
      t.string :student_id
      t.string :teacher_id
      t.belongs_to :student
      t.belongs_to :teacher
      t.timestamps
    end
  end

  # def down
  #   drop_table :products
  # end
end