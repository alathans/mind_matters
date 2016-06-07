class AcceptedInsurance < ActiveRecord::Base

belongs_to :insurer , :class_name => "Insurer", :foreign_key => "insurer_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
