module ApplicationHelper

  def space?(input)
    if self.space == input
      true
    else 
      false
    end
  end 

  def login_status(current_user)
    if current_user
      render :partial => "login_status", locals: { current_user: current_user }
    end
  end

end
