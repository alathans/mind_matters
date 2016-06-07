class Time < ActiveRecord::Base

has_many :therapist_availabilities , :class_name => "TherapistAvailability", :foreign_key => "time_id"

has_many :therapists, :through => :therapist_availabilities

end
