class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.text :description, null: false, default: ""
      t.string :token, null: false, default: ""
      t.string :title,    null: false, default: ""
      t.string :domain,   null: false, default: ""

      t.timestamps null: false
    end
  end
end
