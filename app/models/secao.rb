class Secao < ApplicationRecord
  belongs_to :zona
  has_many :solicitantes
end
