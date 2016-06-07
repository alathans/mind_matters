class Specialty < ActiveRecord::Base

has_many :therapist_specialties , :class_name => "TherapistSpecialty", :foreign_key => "specialty_id"

has_many :therapists, :through => :therapist_specialties

end
