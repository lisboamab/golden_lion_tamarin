json.extract! coin, :id, :short_description, :long_description, :acronym, :url_image, :active, :created_at, :updated_at
json.url coin_url(coin, format: :json)
