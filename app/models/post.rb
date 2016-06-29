class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  validates :content, presence: true, 
  			length: { maximum: 144, too_long: "%{count} No máximo 144 caracteres, obrigado."}
  			
  	def self.recent_posts
  		Post.where("created_at >= ?", 1.week.ago.utc).order("votes_count DESC, created_at DESC")
	end
end
