class NoticesController < InheritedResources::Base

  private

    def notice_params
      params.require(:notice).permit(:user_id, :gallery_id, :body, :mark)
    end
end

