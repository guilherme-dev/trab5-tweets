class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  validates :content, presence: true, 
  			length: { maximum: 144, too_long: "%{count} No máximo 144 caracteres, obrigado."}
end
