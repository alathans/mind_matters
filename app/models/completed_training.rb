class CompletedTraining < ActiveRecord::Base

validates :training_id, :presence => true, :uniqueness => { :scope => :therapist_id }
validates :therapist_id, :presence => true
validates :date_completed, :presence => true


belongs_to :training , :class_name => "Training", :foreign_key => "training_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
