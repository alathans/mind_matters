class State < ActiveRecord::Base

has_many :licenses , :class_name => "License", :foreign_key => "state_id"

has_many :therapists, :through => :licenses

end
