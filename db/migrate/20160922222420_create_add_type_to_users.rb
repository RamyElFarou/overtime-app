class CreateAddTypeToUsers < ActiveRecord::Migration
  def change
    create_table :add_type_to_users do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
