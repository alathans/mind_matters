class Conversation < ActiveRecord::Base

validates :user_id, :presence => true, :uniqueness => { :scope => :therapist_id }
validates :therapist_id, :presence => true
validates :body, :presence => true


belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
