module ApplicationHelper
  def alert_box_class(flash_type)
    return 'alert' if flash_type.eql? 'error' # Flash type error should translate to the alert class for alert boxes in suit
    return 'info' if flash_type.eql? 'notice' # Flash type notice should translate to the info class for alert boxes in suit
    flash_type
  end
end
