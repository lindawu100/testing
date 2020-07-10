module ApiV0
  class Posts < Grape::API
    helpers ::ApiV0::Helpers
    include ApiV0::ExceptionHandlers
    before { authenticate! }
    desc "get all your posts"
    get "/posts" do
      current_user.posts
    end
  end
end