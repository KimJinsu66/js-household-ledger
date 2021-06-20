class CreateUserHouseholdLedgers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_household_ledgers do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :balance

      t.timestamps
    end
  end
end
