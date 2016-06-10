class Time < ActiveRecord::Base

validates :time_slot, :presence => true, :uniquness => true

# Note, time slots will be in the table eventually - like Monday morning, Monday afternoon, Monday evening, etc...

has_many :therapist_availabilities , :class_name => "TherapistAvailability", :foreign_key => "time_id"
has_many :therapists, :through => :therapist_availabilities

end
