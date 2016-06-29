json.array!(@bios) do |bio|
  json.extract! bio, :id, :user_id, :name, :website, :city
  json.url bio_url(bio, format: :json)
end
