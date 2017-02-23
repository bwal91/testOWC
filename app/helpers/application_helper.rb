module ApplicationHelper
	def notice
		flash[:notice]
	end

	def alert
		flash[:alert]
	end


  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
  	 opts
  end

  def page_header(text)
    content_for(:page_header) { text.to_s }
   end

  def active_page(active_page)
    @active == active_page ? "active" : ""
  end

end
