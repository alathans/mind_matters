class State < ActiveRecord::Base

validates :name, :presence => true, :uniqueness => true

has_many :licenses , :class_name => "License", :foreign_key => "state_id"
has_many :therapists, :through => :licenses

end
