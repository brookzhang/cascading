class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    
    @cities = City.all
    @areas = []
    @neighborhoods = []
    
  end

  def create
  end

  def edit
  end

  def update
  end

  def destory
  end
  
  
   def update_areas
      # updates artists and songs based on genre selected
      city = City.find(params[:city_id])
      # map to name and id for use in our options_for_select
      @areas = city.areas.map{|a| [a.name, a.id]}.insert(0, "Select an Area")
      @neighborhoods = Neighborhood.where(:area_id => city.areas.each{|a| a.id}).map{|s| [s.name, s.id]}.insert(0, "Select a neighborhood")
    end

    def update_neighborhoods
      # updates songs based on artist selected
      area = Area.find(params[:area_id])
      @neighborhoods = area.neighborhoods.map{|s| [s.name, s.id]}.insert(0, "Select a neighborhood")
    end
    
end
