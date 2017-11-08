class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :question
      t.integer :company_id

      t.timestamps
    end
  end
end
