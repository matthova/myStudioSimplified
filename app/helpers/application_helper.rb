module ApplicationHelper

  def space?(input)
    if self.space == input
      true
    else 
      false
    end
  end 

  def login_partial(current_user)
    if current_user
      render :partial => "shared/login_status", locals: { current_user: current_user }
    end
  end

end
