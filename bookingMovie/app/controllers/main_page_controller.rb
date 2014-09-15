class MainPageController < ApplicationController
  def index
  	@theatre = 	Theatre.all
  end
  def search_theatre
  	Theatre.find_by zipcode: '95050'
  end	
end
