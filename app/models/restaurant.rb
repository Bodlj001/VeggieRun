class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :meals

  include PgSearch::Model
  pg_search_scope :search_by_cuisine_name_bio_vegan,
    against: [ :cuisine, :name, :vegan, :bio],
    using: {
      tsearch: { prefix: true }
    }
end
