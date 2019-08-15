json.extract! recipe, :id, :title, :total_time, :preparation_time, :cooking_time, :serving, :description, :comment, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
