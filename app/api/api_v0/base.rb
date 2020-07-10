module ApiV0
  class Base < Grape::API
    version 'v0', using: :path
    mount Ping

    use ApiV0::Auth::Middleware

    include ApiV0::ExceptionHandlers
  end
end