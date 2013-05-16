class Businessplan < ActiveRecord::Base
  attr_accessible :order, :status, :wizard_answer, :wizard_question, :wizard_step_id
end
