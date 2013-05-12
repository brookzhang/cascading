class Area < ActiveRecord::Base
  has_many :neighborhoods
  
  belongs_to :city
  
  # attr_accessible :title, :body
end
