class ForumThreadsController < ApplicationController
  before_action :authenticate_user!, except [:index, :show]
  before_action :set_forum_thread, except [:index, :new, :create]
  
  def index
    #
  end
  
  def show
    #
  end
  
  def new
    #
  end
  
  def create
    #
  end
  
  
  private
    def set_forum_thread
      @forum_thread = ForumThread.find(params[:id])
    end
    
    def forum_thread_params
      params.require(:forum_thread).permit(:subject, forum_posts_attributes: [:body])
    end
  
end