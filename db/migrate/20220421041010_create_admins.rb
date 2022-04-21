class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :id
      t.string :name
      t.string :email
      t.string :password
      t.string :role

      t.timestamps
    end
  end
end
