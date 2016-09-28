class ForumThreads::ForumPostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_forum_thread
  
  def create
    @forumd_post = @forum_thread.forum_posts.new forum_post_params
    @forum_post.user = current_user
    
    if @forum_post.save
      redirect_to @forum_thread, notice: "Successful post!"
    else
      redirect_to @forum_thread, alert: "Unable to save post..."
    end
  end
     
   
  private 
    def set_forum_thread
      @forum_thread = ForumThread.find(params[:forum_thread_id])
    end
    
    def forum_post_params
      params.require(:forum_post).permit(:body)
    end
end