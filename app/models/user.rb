class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :first_name, :presence => true,
validates :last_name, :presence => true,
validates :username, :presence => true, :uniqueness => true
validates :password, :presence => true
validates :email, :presence => true, :uniqueness => true
validates :address, :presence => true
validates :photo, :allow_blank => true
validates :branch, :presence => true
validates :occupational_specialty, :allow_blank => true
validates :last_rank, :allow_blank => true
validates :years_of_service, :presence => true
validates :months_deployed, :allow_blank => true
validates :location_deployed, :allow_blank => true

 has_many :appointments , :class_name => "Appointment", :foreign_key => "user_id"
 has_many :conversations , :class_name => "Conversation", :foreign_key => "user_id"
 has_many :user_insurances , :class_name => "UserInsurance", :foreign_key => "user_id"
 has_many :therapists, :through => :appointments

end
