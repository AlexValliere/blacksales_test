class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items

  def total_price
    cart_items.sum { |item| item.product.price * item.quantity }
  end

  def add_product(product, quantity = 1)
    item = cart_items.find_by(product: product)
    if item
      item.quantity += quantity
      item.save
    else
      cart_items.create(product: product, quantity: quantity)
    end
  end

  def remove_product(product)
    item = cart_items.find_by(product: product)
    if item
      item.destroy
    end
  end

  def clear
    cart_items.destroy_all
  end

  def checkout
    ActiveRecord::Base.transaction do
      cart_items.each do |item|
        product = item.product
        product.quantity -= item.quantity
        product.save!
      end
      clear
    end
  end
end
