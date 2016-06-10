class TherapistCredential < ActiveRecord::Base

validates :credential_id, :presence => true, :uniqueness => { :scope => :therapist_id }
validates :therapist_id, :presence => true


belongs_to :credential , :class_name => "Credential", :foreign_key => "credential_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
