class TherapistNote < ActiveRecord::Base

validates :appointment_id, :presence => true
validates :body, :presence => true

belongs_to :appointment , :class_name => "Appointment", :foreign_key => "appointment_id"

end
