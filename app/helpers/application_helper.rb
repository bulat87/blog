module ApplicationHelper

  def geo_info
    ip_meta = Ipgeobase.lookup(request.remote_ip)
    ip_meta.city
    request.remote_ip
  end

  def user_owner(item)
  	current_user == item.user
  end

end
