class RemoveAlumColumnFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :alum
  end
end
