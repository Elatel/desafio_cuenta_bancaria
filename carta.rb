class Carta
    attr_accessor :numero, :pinta #getter & setter
    def initialize(numero, pinta) #metodo constructor
        if !(1..13).include?(numero)
            raise ArgumentError, "valor no esta entre 1 y 13"
        end
        
        if !['C','D','E','T'].include?(pinta)
            raise ArgumentError, "La pinta no es C, D, E, T"
        end

        @numero = numero
        @pinta = pinta

    end

    def numero=(numero) #METODO SETTER
        if !(1..13).include?(numero)
            raise ArgumentError, 'El numero no esta entre 1 y 13'
        end
    end

    def pinta=(pinta) #METODO SETTER
        if !['C','D','E','T'].include?(pinta)
            raise ArgumentError, 'La pinta no es C, D,E, T'
        end
    end

    def self.numero #esto es un metodo de clase 
        Random.rand(1..13)
    end

    def self.pinta #esto es un metodo de clase 
        ['C','D','E','T'].sample
    end
end

deck = []

5.times do
    pinta1 = Carta.pinta
    numero1 = Carta.numero
    deck.push Carta.new(numero1, pinta1)#esto es un metodo de instancia
     
    # c1.inspect
    #<Carta:0x00007fa6e990a370 @numero=12, @pinta="T">
end
print deck

