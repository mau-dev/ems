json.extract! employee, :id, :last_name, :first_name, :birth_date, :designation, :department, :hiring_date, :salary, :hierarchy_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
