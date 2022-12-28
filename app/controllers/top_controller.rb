class TopController < ApplicationController
  def index
  end

  def install
    @browser = params[:browser] || UserAgent.parse(request.env['HTTP_USER_AGENT']).browser
  end

  def usage
  end

  def logo
    render :layout => false
  end

  def bookmarklet
    render :layout => false
  end

  def contact
    @no_ad = true
  end

  def pp
    @no_navbar = true
    @no_sidebar = true
    @no_ad = true
  end
end
