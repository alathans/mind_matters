class TherapistAvailability < ActiveRecord::Base

validates :time_id, :presence => true, :uniqueness => { :scope => :therapist_id }
validates :therapist_id, :presence => true

# Note, time slots will be in the time table eventually - like Monday morning, Monday afternoon, Monday evening, etc...this is the join model though.

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"
belongs_to :time , :class_name => "Time", :foreign_key => "time_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
