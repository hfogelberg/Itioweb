class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dogs
  
  def get_dogs
    logger.debug "*** Get Dogs ***"
    @dogs = Dog.all
    
    logger.debug "*** Dog id #{params[:id]}***"
    if !params[:id].blank?
      dog_id = params[:id].to_i
      @selected_dog = Dog.find(dog_id)
    end
  end
end
