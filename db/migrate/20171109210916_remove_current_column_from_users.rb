class RemoveCurrentColumnFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :current
    add_column :experiences, :current, :boolean, default: false
  end
end
