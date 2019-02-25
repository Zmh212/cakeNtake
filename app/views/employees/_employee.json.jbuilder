json.extract! employee, :id, :empname, :position, :salary, :joined, :left, :created_at, :updated_at
json.url employee_url(employee, format: :json)
