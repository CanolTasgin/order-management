class Order < ApplicationRecord
    belongs_to :category, optional: true
    validates :gross, presence:true, comparison: { greater_than_or_equal_to: :discount }, if: :discount?
    validates :gross, presence:true, if: :discount.nil?

    CURRENCIES = ['TR', 'EUR', 'USD']
    validates :currency, presence: true, inclusion: { in: CURRENCIES }
end
