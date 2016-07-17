class SearchController < ApplicationController
  def index
  	@stories = Story.order(:location)
  end

  def search
  	
  end

  def search_results
  	@stories = Story.where("location LIKE ?", "%#{params[:keyword]}%")
  end
 


end
