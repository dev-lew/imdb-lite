json.extract! rating, :id, :tconst, :averageRating, :numVotes, :created_at, :updated_at
json.url rating_url(rating, format: :json)
