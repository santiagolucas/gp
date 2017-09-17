class Solicitante < ApplicationRecord
    belongs_to :estado_civil
    belongs_to :zona
    belongs_to :secao
    belongs_to :municipio
    belongs_to :estado
    belongs_to :categoria

    scope :by_zona, -> (zona) {
        where(zona_id: zona) if zona
    }

    scope :by_secao, -> (secao) {
        where(secao_id: secao) if secao
    }

    scope :by_categoria, -> (categoria) {
        where(categoria_id: categoria) if categoria
    }
end
