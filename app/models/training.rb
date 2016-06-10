class Training < ActiveRecord::Base

validates :name, :presence => true, :uniqueness => true

has_many :completed_trainings , :class_name => "CompletedTraining", :foreign_key => "training_id"
has_many :therapists, :through => :completed_trainings

end
