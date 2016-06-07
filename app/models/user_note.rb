class UserNote < ActiveRecord::Base

belongs_to :appointment , :class_name => "Appointment", :foreign_key => "appointment_id"

end
