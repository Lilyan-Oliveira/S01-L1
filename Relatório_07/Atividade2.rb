# Classe base Carro
class Carro
  def descrever
    "Este é um carro genérico."
  end
end

# Classe filha 
class CarroEsportivo < Carro
  def descrever
    "Este é um carro esportivo, rápido e potente."
  end
end

# Classe filha
class CarroSedan < Carro
  def descrever
    "Este é um carro sedan, confortável e espaçoso."
  end
end

# Criação de instâncias das classes
carro_generico = Carro.new
carro_esportivo = CarroEsportivo.new
carro_sedan = CarroSedan.new

# Chama o método 'descrever' em cada objeto
puts carro_generico.descrever
puts carro_esportivo.descrever
puts carro_sedan.descrever
