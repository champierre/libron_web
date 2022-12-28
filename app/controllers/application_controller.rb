class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  $FIREFOX_ADDON_URL = "https://addons.mozilla.org/ja/firefox/addon/161619/"
  $CHROME_EXTENSION_URL = "https://chrome.google.com/webstore/detail/fpfgglfemmnflnmjminpghmeiajcajoi"
  $SAFARI_EXTENSION_URL = "https://bit.ly/libron_safari"
  $IPHONE_APPSTORE_URL = "https://itunes.apple.com/jp/app/libron/id478517535?mt=8"
  $GM_SCRIPT_URL = "https://www.libron.net/greasemonkey/libron.user.js"

  $AMAZON_AFFILIATE_ID = "tsukurusha-libron-22"

  before_action :set_iphone_format

  def set_iphone_format
    request.format = :iphone if iphone_request? && params[:controller] == 'books'
  end

  private
  def iphone_request?
    request.user_agent =~ /(Mobile.+Safari)/
  end
end
