class AcceptedInsurance < ActiveRecord::Base

validates :insurer_id, :presence => true, :uniqueness => { :scope => :therapist_id }
validates :therapist_id, :presence => true


belongs_to :insurer , :class_name => "Insurer", :foreign_key => "insurer_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
