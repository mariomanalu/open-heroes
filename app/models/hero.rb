class Hero < ApplicationRecord
  # include PgSearch::Model
  # pg_search_scope :search, against: [:title, :review, :author], using: {tsearch: {prefix: true}}

  # belongs_to :user

  has_attached_file :hero_image, styles: { medium: "250x350>", hero_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :hero_image, content_type: /\Aimage\/.*\z/
end
