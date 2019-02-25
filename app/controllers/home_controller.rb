class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end
    
  def privacy
  end
    
  def help
  end
    
  def askname
      @customername = params["username" ]
  end
    
  def search
      @searchinput = params["searchinput"]
      
      #  Setting results flag to 0 indicates that user has not provided search criteria
      
      if !@searchinput.nil?
          if !@searchinput.empty?
              @results = 1
      @results = 0
      @searchresults = Product.where("description like ?","%" + @searchinput.to_s+ "%")
      
  end

end
