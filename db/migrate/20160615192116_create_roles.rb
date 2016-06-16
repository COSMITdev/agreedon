class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :agreement, index: true, foreign_key: true
      t.string :role,         null: false, default: ''
      t.string :email,        null: false, default: ''
      t.string :id_number
      t.string :full_name,    null: false, default: ''
      t.string :full_address, null: false, default: ''

      t.timestamps null: false
    end
  end
end
