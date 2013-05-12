class Neighborhood < ActiveRecord::Base
  
  belongs_to :area
  
  # attr_accessible :title, :body
end
