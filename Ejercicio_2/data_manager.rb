require_relative 'curso'
require_relative 'fechas_curso'
class DataManager

attr_accessor :data
    def initialize(path)
        @data = File.open(path,'r')
    end

    def initialize_c
        cursos = self.initialize_course
        Curso.new("dd",cursos)
      end

    def initialize_course
     courses = []
        @data.each do | data_line|

            parse_data = data_line.split(", ")
            course_name = parse_data[0]

            course = Course.new(course_name)

            parse_data[1..-1].each_with_index do |fecha, index|
  
            course.dates << FechasCurso.new(fecha,index)

            end
            courses << course
        end
        courses
    end



end