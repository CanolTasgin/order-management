class Category < ApplicationRecord
    has_many :orders, dependent: :nullify
    validates :name, uniqueness: true, presence: true
end
