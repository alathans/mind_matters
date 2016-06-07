class TherapistSpecialty < ActiveRecord::Base

belongs_to :specialty , :class_name => "Specialty", :foreign_key => "specialty_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"
end
