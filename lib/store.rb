class Store < ActiveRecord::Base
has_many :employees
validates :name, length: { minimum: 3 }
validates :annual_revenue, presence:true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
validate :must_sell_apparel


  def must_sell_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:must_sell_apparel, "must sell womens and/or mens apparel!")
    end
  end

end
