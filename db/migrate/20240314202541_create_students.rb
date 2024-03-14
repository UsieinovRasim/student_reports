# frozen_string_literal: true

class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.string :email, limit: 150

      t.timestamps
    end
  end
end
