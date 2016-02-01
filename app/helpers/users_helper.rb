module UsersHelper
  
  def job_title_icon
    if @user.profile.job_title == "Developer"
      "<i class='fa fa-code' style='line-height: 25px; font-size: 23px;'></i>".html_safe
    elsif @user.profile.job_title == "Entrepreneur"
      "<i class='fa fa-lightbulb-o' style='line-height: 25px; font-size: 24px;'></i>".html_safe
    elsif @user.profile.job_title == "Investor"
      "<i class='fa fa-dollar' style='line-height: 26px; font-size: 21px;'></i>".html_safe
    end
  end
  
end