json.(current_user, :id, :email)
json.token "Bearer #{@token}"