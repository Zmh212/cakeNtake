json.extract! purchase, :id, :customer_id, :saledate, :salenotes, :status, :specialPurchase, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
