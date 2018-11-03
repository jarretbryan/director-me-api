class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :location
      t.string :office
      t.string :direct
      t.references :department, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
