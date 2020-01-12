class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.string :designation
      t.string :department
      t.date :hiring_date
      t.integer :salary
      t.references :hierarchy, foreign_key: true

      t.timestamps
    end
  end
end
