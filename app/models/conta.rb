class Conta < ActiveRecord::Base
  attr_accessible :descricao, :pago, :parcelas, :valor, :vencimento
end
