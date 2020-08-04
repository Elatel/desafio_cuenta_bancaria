class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_usuario, numero_de_cuenta, cuenta_vip = 0)
        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'la cuenta debe tener 8 digitos'
        end

        if !(0..1).include?(cuenta_vip)
            raise RangeError, 'vip de digito no es 0 o 1'
        end
        @nombre_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        @cuenta_vip = cuenta_vip

    end

    def numero_de_cuenta
        "#{@cuenta_vip}-#{@numero_de_cuenta}" #esto es una interpolacion
    end
end

cuenta1 = CuentaBancaria.new('Lorenzo',12345678,1)

puts cuenta1.numero_de_cuenta