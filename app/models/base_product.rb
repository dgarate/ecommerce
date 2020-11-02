class BaseProduct < ApplicationRecord
    has_many :products

    def children
        children = self.product
    end

    def children_stock
        self.product.sum(:stock)
end
