class NoticesController < InheritedResources::Base
  before_action :set_gallery
  before_action :authenticate_user!, only: :create
  def new
    @notice = Notice.new
  end
  def index
    @notices = Notice.order(created_at: :desc)
  end
  def create
    @notice = @gallery.notices.build(notice_params)
    @notice.user_id = current_user.id

    if @notice.save
      flash[:success] = "You noticeed the hell out of that gallery!"
      redirect_to :back
    else
      flash[:alert] = "Check the notice form, something went horribly wrong."
      render root_path
    end
  end
  def destroy
    
    @notice = @gallery.notices.find(params[:id])

    @notice.destroy
    flash[:success] = "notice deleted"
    redirect_to :back
 
  end
  private

    def notice_params
      params.require(:notice).permit(:user_id, :notice_id, :body, :mark)
    end
    def set_gallery
      @gallery = Gallery.find(params[:gallery_id])
    end
end

