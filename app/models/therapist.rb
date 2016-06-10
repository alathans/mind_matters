class Therapist < ActiveRecord::Base

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :username, :presence => true, :uniqueness => true
validates :password, :presence => true
validates :email, :presence => true, :uniqueness => true
validates :address, :presence => true
validates :photo, :presence => true
validates :national_provider_identifier, :presence => true, :uniqueness => true
validates :education, :presence => true
validates :bio, :presence => true


has_many :completed_trainings , :class_name => "CompletedTraining", :foreign_key => "therapist_id"
has_many :therapist_availabilities , :class_name => "TherapistAvailability", :foreign_key => "therapist_id"
has_many :therapist_availabilities , :class_name => "TherapistAvailability", :foreign_key => "therapist_id"
has_many :accepted_insurances , :class_name => "AcceptedInsurance", :foreign_key => "therapist_id"
has_many :therapist_specialties , :class_name => "TherapistSpecialty", :foreign_key => "therapist_id"
has_many :licenses , :class_name => "License", :foreign_key => "therapist_id"
has_many :therapist_credentials , :class_name => "TherapistCredential", :foreign_key => "therapist_id"
has_many :conversations , :class_name => "Conversation", :foreign_key => "therapist_id"
has_many :appointments , :class_name => "Appointment", :foreign_key => "therapist_id"
has_many :trainings, :through => :completed_trainings
has_many :trainings, :through => :completed_trainings
has_many :insurers, :through => :accepted_insurances
has_many :states, :through => :licenses
has_many :credentials, :through => :therapist_credentials
has_many :specialties, :through => :therapist_specialties
has_many :times, :through => :therapist_availabilities
has_many :users, :through => :appointments

end
