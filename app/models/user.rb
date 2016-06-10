class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :username, :presence => true, :uniqueness => true
validates :address, :presence => true
validates :branch, :presence => true
validates :years_of_service, :presence => true


 has_many :appointments , :class_name => "Appointment", :foreign_key => "user_id"
 has_many :conversations , :class_name => "Conversation", :foreign_key => "user_id"
 has_many :user_insurances , :class_name => "UserInsurance", :foreign_key => "user_id"
 has_many :therapists, :through => :appointments

end
