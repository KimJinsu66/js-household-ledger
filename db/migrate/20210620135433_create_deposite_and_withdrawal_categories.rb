class CreateDepositeAndWithdrawalCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :deposite_and_withdrawal_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
