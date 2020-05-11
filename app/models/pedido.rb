class Pedido < ApplicationRecord
  belongs_to :producto
  belongs_to :Usuario
end
