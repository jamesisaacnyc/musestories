class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :stories
  has_attached_file :avatar, 
  styles: { medium: "300x300>", thumb: "200x200" }, 
  default_url: "/images/:style/missing.png",
  bucket: ENV['AWS_BUCKET_ID']
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end

		