class Credential < ActiveRecord::Base

has_many :therapist_credentials , :class_name => "TherapistCredential", :foreign_key => "credential_id"

has_many :therapists, :through => :therapist_credentials

end
