class Conversation < ActiveRecord::Base

belongs_to :user , :class_name => "User", :foreign_key => "user_id"

belongs_to :therapist , :class_name => "Therapist", :foreign_key => "therapist_id"

end
