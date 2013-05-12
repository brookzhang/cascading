class City < ActiveRecord::Base
  has_many :areas
  
  # attr_accessible :title, :body
end
