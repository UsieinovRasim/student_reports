class CreateLabReports < ActiveRecord::Migration[7.0]
  def change
    create_table :lab_reports do |t|
      t.string :title
      t.string :description
      t.string :grade
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
