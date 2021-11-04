json.extract! movie, :id, :titulo, :lanzamiento, :created_at, :updated_at
json.url movie_url(movie, format: :json)
