class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include ApplicationHelper

  # 预览
  def preview
    @content = params[:content];
    render :json => { :data =>markdown(@content)};
  end

end
