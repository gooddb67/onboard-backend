class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
