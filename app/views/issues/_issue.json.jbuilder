json.extract! issue, :id, :title, :body, :created_at, :updated_at
json.url issue_url(issue, format: :json)
