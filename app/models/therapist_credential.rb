class TherapistCredential < ActiveRecord::Base

belongs_to :credential , :class_name => "Credential", :foreign_key => "credential_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
