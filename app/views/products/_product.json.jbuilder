json.extract! product, :id, :productname, :productimage, :description, :category_id, :saleprice, :status, :purchaseprice, :created_at, :updated_at
json.url product_url(product, format: :json)
