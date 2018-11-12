require 'date'

class Course
    attr_accessor :curso,:fecha_ini,:fecha_fin
    def initialize(curso,fecha_ini,fecha_fin)
        @curso = curso
        @fecha_ini = Date.parse(fecha_ini)
        @fecha_fin = Date.parse(fecha_fin) 
    end

    def before_begins(filter_date)
        raise ArgumentError , "La fecha es mayor #{filter_Date}"  if filter_date > Date.parse('2018-01-01')
        cursos_filter = []
        cursos_filter = [@curso,@fecha_ini,@fecha_fin] if @fecha_ini > filter_date
        cursos_filter
    end

    def after_begins(filter_date)
        raise ArgumentError , "La fecha es mayor #{filter_Date}"  if filter_date > Date.parse('2018-01-01')
        cursos_filter = []
        cursos_filter = [@curso,@fecha_ini,@fecha_fin] if @fecha_fin < filter_date
        cursos_filter

    end
   
end

def read_file(path)
    fecha_filter = Date.parse ('2017-05-20')
    cursos = []
    data_listB = []
    data_listA = []

    File.open(path,'r'){|lines| cursos = lines.readlines }

        cursos.each do |line|
        ls = line.split(', ')

         curso = Course.new(*ls)
         data_listB << curso.before_begins(fecha_filter)
         data_listA << curso.after_begins(fecha_filter)
        # curso = Course.new(*ls)
        # curso.before_begins
        end
        puts 'Cursos que comienzan previos'
        puts data_listB

        puts 'Cursos que finalizan posterior'
        puts data_listA
end

puts read_file('cursos.txt')
