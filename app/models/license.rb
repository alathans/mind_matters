class License < ActiveRecord::Base

validates :therapist_id, :presence => true, :uniqueness => { :scope => :state_id }
validates :state_id, :presence => true
validates :license_number, :presence => true, :uniqueness => true


has_many :states
belongs_to :state , :class_name => "State", :foreign_key => "state_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
