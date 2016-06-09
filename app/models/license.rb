class License < ActiveRecord::Base

has_many :states

belongs_to :state , :class_name => "State", :foreign_key => "state_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
