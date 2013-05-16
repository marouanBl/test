class Location < ActiveRecord::Base
  attr_accessible :country_id, :name, :slug


	has_many :projects, :foreign_key => :location_id, :dependent => :destroy
end
