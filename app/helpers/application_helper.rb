module ApplicationHelper

  def flash_notice(flash) 
    capture do
      flash.each do |type, message|
        concat content_tag :div, message, class: "alert alert-#{flash_class(type)}", role: "alert"
      end
    end
  end
  
  def flash_class(type)
    {'notice' => 'success',
     'error' => 'danger',
     'alert' => 'info'
    }[type]
  end

end
