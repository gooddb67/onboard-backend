class CreateCompanyRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :company_rooms do |t|
      t.integer :room_id
      t.integer :company_id

      t.timestamps
    end

  end
end
