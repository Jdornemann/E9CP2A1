require 'date'

class Course

    attr_accessor :name
    attr_accessor :dates
    def initialize(course_name,dates = [])
        @course_name = course_name
        @dates = dates
    end


    def check_dates(filter_date)
        @dates.select{| date | date < filter_date}
    end


end