class ChangeCurrentStudentColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :current_student, :alum
  end
end
