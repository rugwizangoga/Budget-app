class Category < ApplicationRecord
  validates :icon, presence: true
  belongs_to :user
  has_many :category_trades
  has_many :trades, through: :category_trades
end
