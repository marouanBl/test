class WizardStep < ActiveRecord::Base
  attr_accessible :name, :order

  extend FriendlyId
  friendly_id :name, use: :slugged
end
