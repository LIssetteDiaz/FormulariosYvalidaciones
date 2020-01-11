class Sale < ApplicationRecord

  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco),  message: "La categoria debe ser uno, dos, tres, cuatro o cinco" }
  validates :value, numericality: { only_integer: true, greater_than: 0 } #entero y positivo
  validates :discount, numericality: { only_integer: true, greater_than: 0, less_than: 41 } #entero y positivo y menor o igual a 40

end
