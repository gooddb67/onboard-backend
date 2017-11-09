class AddCurrentToExperiences < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current, :boolean, default: false
  end
end
