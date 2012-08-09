class Gasto < ActiveRecord::Base
  attr_accessible :categoria, :data, :descricao, :valor
end
