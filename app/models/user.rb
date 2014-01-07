class User < ActiveRecord::Base

validates :username, presence:  true, uniqueness: true

has_many :delegated_tasks, class_name: "Task", foreign_key: "delegated_id"

	has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         	validates :username, presence:  true, uniqueness: true
end
