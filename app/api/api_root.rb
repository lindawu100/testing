class ApiRoot < Grape::API
  # 設定資料格式為json, 沒設定的話會是xml
  PREFIX = '/api'.freeze
  format :json
  mount ApiV0::Base
end