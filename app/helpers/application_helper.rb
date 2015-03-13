module ApplicationHelper
  def flash_class(level)
    if level == 'notice'
      "alert-info"
    elsif level == 'success'
      "alert-success"
    elsif level == 'error'
      "alert-danger"
    elsif level == 'alert'
      "alert-warning"
    else
      nil
    end
  end

  def full_title(page_title="")
    base_title = "Leatherwood Hi-Lux Blog"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
