class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @assessment = Assessment.find_by_id(params['id'])
    render 'show'
  end
  
  def new
    render 'new'
  end
  
  
  def create
    g = Assessment.new
    g.name = params['name']
    g.idea = params['idea']
    g.save
    redirect_to "/assessment/#{ g.id }"
  end
  
  def edit
    @assessment = Assessment.find_by_id(params['id'])
    render 'edit'
  end
  
  def destroy
    g = Assessment.find_by_id(params['id'])
    g.destroy
    redirect_to "/assessment"
  end
  
  def index
    @assessment = Assessment.all
  end

  
  def update
    g = Assessment.find_by_id(params['id'])
    g.name = params['name']
    g.idea = params['idea']
    g.save
    redirect_to "/assessment/#{ g.id }"
  end
end
