class Training < ActiveRecord::Base

has_many :completed_trainings , :class_name => "CompletedTraining", :foreign_key => "training_id"

has_many :therapists, :through => :completed_trainings

end
