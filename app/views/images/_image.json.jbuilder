json.extract! image, :id, :name, :picture, :user_id, :created_at, :updated_at
json.url image_url(image, format: :json)
