json.extract! pelicula, :id, :name, :director, :year, :country, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)