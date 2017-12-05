class Store < ActiveRecord::Base

  has_many :employees

  validates :name,
    length: { minimum: 3 }

  validates :annual_revenue,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0
    }

  validate :carries_mens_or_womens

  def carries_mens_or_womens
    if mens_apparel != true && womens_apparel != true
      errors.add(:mens_apparel, "either mens_apparel or womens_apparel must be true")
      errors.add(:womens_apparel, "either mens_apparel or womens_apparel must be true")
    end
  end

end
