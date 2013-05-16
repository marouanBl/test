class Backer < ActiveRecord::Base
  attr_accessible :confirmed_at, :finished, :project_id, :user_id, :value, :newsomme

  belongs_to :user
  belongs_to :project
end
