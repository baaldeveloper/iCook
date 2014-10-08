json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :cooking_time, :difficulty, :rest_time, :preparation_time
  json.url recipe_url(recipe, format: :json)
end
