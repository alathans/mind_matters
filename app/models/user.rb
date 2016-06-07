class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :appointments , :class_name => "Appointment", :foreign_key => "user_id"

 has_many :conversations , :class_name => "Conversation", :foreign_key => "user_id"

 has_many :user_insurances , :class_name => "UserInsurance", :foreign_key => "user_id"

 has_many :therapists, :through => :appointments

end
