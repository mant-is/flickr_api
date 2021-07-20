class StaticPagesController < ApplicationController
 
  def search 
    
    if params[:user_id]
      flickr = Flickr.new
      begin 
        search_params = { user_id: params[:user_id] }
        @photos = flickr.photos.search(search_params)
      rescue Flickr::FailedResponse => e
        flash.now[:notice] = "No user found with ID #{ params[:user_id] }"
      end
    end
  end

end
