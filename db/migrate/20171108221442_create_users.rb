class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :password_digest
      t.string :avatar
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
