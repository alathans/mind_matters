class UserInsurance < ActiveRecord::Base

validates :insurer_id, :presence => true, :uniqueness => { :scope => :user_id }
validates :user_id, :presence => true
validates :uninsured, :presence => true

belongs_to :user

end
