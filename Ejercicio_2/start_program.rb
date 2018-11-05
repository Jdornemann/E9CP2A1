
require_relative 'data_manager'
require_relative 'curso'
require 'date'


data_manager = DataManager.new("./cursos.txt")

curso = data_manager.initialize_c

puts curso.check_dates('2017-05-25')
