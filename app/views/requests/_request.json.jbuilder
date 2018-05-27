json.extract! request, :id, :user_id, :item, :quantity, :status, :created_at, :updated_at
json.url request_url(request, format: :json)
