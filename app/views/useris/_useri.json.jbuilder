json.extract! useri, :id, :name, :email, :login, :created_at, :updated_at
json.url useri_url(useri, format: :json)
