class Insurer < ActiveRecord::Base

validates :name, :presence => true, :uniqueness => true

has_many :accepted_insurances , :class_name => "AcceptedInsurance", :foreign_key => "insurer_id"
has_many :therapists, :through => :accepted_insurances
end
