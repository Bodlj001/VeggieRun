class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_cuisine_name_vegan,
    against: [ :cuisine, :name, :vegan ],
    using: {
      tsearch: { prefix: true }
    }
end
