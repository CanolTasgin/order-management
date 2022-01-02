class Category < ApplicationRecord
    has_many :orders, dependent: :nullify
    validates :name, uniqueness: { case_sensitive: false }, presence: true
end
