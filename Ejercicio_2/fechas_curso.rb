require 'date'

class FechasCurso

    attr_accessor :fecha_ini
    attr_accessor :fecha_fin
    def initialize (fecha,index)
        @fecha_ini =  Date.parse(fecha) if index==1
        @fecha_fin = Date.parse(fecha) if index==2
    end

end