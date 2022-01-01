class Order < ApplicationRecord
    belongs_to :category, optional: true
    validates:gross, presence: true

    CURRENCIES = ['TR', 'EUR', 'USD']
    validates :currency, presence: true, inclusion: { in: CURRENCIES }

end
