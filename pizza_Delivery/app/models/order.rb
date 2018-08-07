class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_items, :dependent => :delete_all # https://stackoverflow.com/questions/37025885/rails-cannot-delete-or-update-a-parent-row-a-foreign-key-constraint-fails
  # allows us to delete orders now
  #before_create :set_order_status
  before_validation :set_order_status, on: :create
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1
    self.userId = Current.user.id
  end

  def update_subtotal
    self[:subtotal] = subtotal
    # not sure if this will work
    self[:shipping] = 3
    self[:total] = subtotal+3
  end
end
