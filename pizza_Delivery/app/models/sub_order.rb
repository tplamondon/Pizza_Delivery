class SubOrder < ApplicationRecord
  belongs_to :order
  belongs_to :menuitem
end
