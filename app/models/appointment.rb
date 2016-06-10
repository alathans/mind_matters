class Appointment < ActiveRecord::Base

validates :therapist_id, :presence => true, :uniqueness => { :scope => :datetime }
validates :user_id, :presence => true, :uniqueness => { :scope => :datetime }
validates :datetime, :presence => true
validates :duration_minutes, :presence => true
validates :appointment_status, :presence => true


has_many :user_notes , :class_name => "UserNote", :foreign_key => "appointment_id"
has_many :therapist_notes , :class_name => "TherapistNote", :foreign_key => "appointment_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
