json.extract! purchasedetail, :id, :purchase_id, :product_id, :saleprice, :created_at, :updated_at
json.url purchasedetail_url(purchasedetail, format: :json)
