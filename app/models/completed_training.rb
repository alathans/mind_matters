class CompletedTraining < ActiveRecord::Base
  
belongs_to :training , :class_name => "Training", :foreign_key => "training_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
