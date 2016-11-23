json.array!(@words) do |word|
  json.extract! word, :id, :word, :mean, :category_id
  json.url word_url(word, format: :json)
end
