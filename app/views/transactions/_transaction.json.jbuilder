json.extract! transaction, :id, :name, :no_phone, :address, :count_item, :email, :total_price, :status, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
