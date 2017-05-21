class Item < ActiveRecord::Base
  has_many :line_items
  belongs_to :category

  def self.available_items
    available = []
    self.all.each do |item|
      if item.inventory > 0
        available << item
      end
    end
    available
  end
end
