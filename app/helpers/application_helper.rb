module ApplicationHelper
  
  def render_if(condition, record)
    if condition
      render record
    end
  end

  def img_button_to(image, link, remote)
    link_to image, link , method: :post
  end
  
end
