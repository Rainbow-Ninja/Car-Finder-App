class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :phone_name
      t.text :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
