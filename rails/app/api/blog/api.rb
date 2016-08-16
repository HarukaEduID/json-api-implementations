module Blog
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :articles do
      get do
        Article.all
      end
    end
  end
end