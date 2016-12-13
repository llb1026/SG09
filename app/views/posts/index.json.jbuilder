json.array!(@posts) do |post|
  json.extract! post, :id, :title, :category, :content, :img_url, :reply_account, :reply_option, :reply_phone
  json.url post_url(post, format: :json)
end
