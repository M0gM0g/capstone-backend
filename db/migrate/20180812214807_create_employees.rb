class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :salary
      t.string :goals
      t.string :reviews
      t.string :date

      t.timestamps
    end
  end
end
