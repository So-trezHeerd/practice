json.extract! order, :id, :order_id, :user_id, :product_id_id, :price, :quantity, :delivery_fee, :total_price, :created_at, :updated_at
json.url order_url(order, format: :json)
