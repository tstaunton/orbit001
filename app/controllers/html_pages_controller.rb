class HtmlPagesController < ApplicationController
  def home
    if logged_in?
      @snapshot = current_user.snapshots.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
