json.extract! user_household_ledger, :id, :user_id, :balance, :created_at, :updated_at
json.url user_household_ledger_url(user_household_ledger, format: :json)
