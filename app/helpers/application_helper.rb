module ApplicationHelper

# before_filter :authenticate_member!

# member_signed_in?

# current_member

# member_session

def active(path)
  if request.url==path
    return "active"
  else
    return "nil"
  end
end

end
