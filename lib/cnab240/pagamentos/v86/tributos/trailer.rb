module Cnab240::V86::PagamentosTributos
  class Trailer < BinData::Record
    include Cnab240::DefaultMixin

    lstring :controle_banco, length: 3, pad_byte: '0'
    lstring :controle_lote, length: 4, pad_byte: '0'
    lstring :controle_registro, length: 1, initial_value: '5', pad_byte: '0'

    lstring :cnab_g004_1, length: 9, pad_byte: '0'
    lstring :totais_qtde_registros, length: 6, pad_byte: '0'
    lstring :totais_valor, length: 18, pad_byte: '0'

    string :complemento, length: 189, pad_byte: ' '
    string :ocorrencias, length: 10, pad_byte: ' '
  end
end
