class Book < ApplicationRecord
  has_many :rentals
  has_many :users, through: :rentals

  validates :title, presence: true
  validates :description, absence: true, unless: :title?
  validates :description, length: { maximum: 100 }
  before_validation MessageOut
  before_save MessageOut
  after_find :find_message
  after_initialize :initialize_message

  private
  def find_message
    puts "読みました"
  end

  def initialize_message
    puts "インスタンス化しました"
  end
end
