class AddCurrentStudentToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_student, :boolean, default: false
  end
end
