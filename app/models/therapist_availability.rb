class TherapistAvailability < ActiveRecord::Base

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

belongs_to :time , :class_name => "Time", :foreign_key => "time_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
