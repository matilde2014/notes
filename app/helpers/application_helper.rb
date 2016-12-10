module ApplicationHelper
  def current_user?(user)
    user == current_user
  end

  def select_access_mode(object,method='access_mode',custom_options={},html_options={})
    options = { :prompt => t(:select_access_mode) }
    options.merge! custom_options
    access_modes = Student::ACCESS_MODES.map {|am| [t(am), am ]}
    select(object,method,access_modes,{:prompt => options[:prompt], :include_blank => options[:include_blank]},html_options)
  end
end