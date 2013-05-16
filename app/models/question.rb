class Question < ActiveRecord::Base
  attr_accessible :category_id, :featured, :is_solved, :question, :slug, :status, :subject, :user_id

  belongs_to :category
  belongs_to :user

  has_many :answers, :foreign_key => :question_id, :dependent => :destroy
  
  extend FriendlyId
  friendly_id :subject, use: :slugged

end
