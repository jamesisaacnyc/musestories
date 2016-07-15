class Story < ActiveRecord::Base
	acts_as_votable
	belongs_to :user

	has_attached_file :image, styles: { large: "600x600>", medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end


