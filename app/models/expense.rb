class Expense < ApplicationRecord
    belongs_to :user

    validates :name, presence: true
    validates :category, presence: true
    validates :ammount, presence: true
    validates :date, presence: true
end
