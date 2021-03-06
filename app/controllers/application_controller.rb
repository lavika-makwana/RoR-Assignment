class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, with: :render_404
	before_action :set_locale

  private

  def render_404
    respond_to do |format|
      format.html { render "#{Rails.root}/public/404.html", status: 404 }
      format.json { render json: { status: 404, message: 'Page Not Found' } }
    end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
