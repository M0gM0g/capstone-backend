class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :salary
      t.string :goals
      t.string :reviews
      t.string :date

      t.timestamps
    end
  end
end
