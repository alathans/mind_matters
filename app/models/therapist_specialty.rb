class TherapistSpecialty < ActiveRecord::Base

validates :specialty_id, :presence => true, :uniqueness => { :scope => :therapist_id }
validates :therapist_id, :presence => true


belongs_to :specialty , :class_name => "Specialty", :foreign_key => "specialty_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"
end
