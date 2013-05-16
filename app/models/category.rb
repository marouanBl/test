class Category < ActiveRecord::Base
  attr_accessible :description, :name, :parent, :slug

  	has_many :questions, :foreign_key => :category_id, dependent: :destroy
	has_many :projects, :foreign_key => :category_id, :dependent => :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged

end
