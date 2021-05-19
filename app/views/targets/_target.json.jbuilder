json.extract! target, :id, :name, :icon, :url, :created_at, :updated_at
json.url target_url(target, format: :json)
