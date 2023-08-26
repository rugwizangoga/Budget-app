class Trade < ApplicationRecord
  belongs_to :user, foreign_key: :author_id, class_name: 'User'
  has_many :category_trades
  has_many :categories, through: :category_trades

  validates :name, :amount, presence: true
end
