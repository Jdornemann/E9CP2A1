class Table
    attr_accessor :mesa
    attr_accessor :monto
    def initialize(mesa,*monto)
      @mesa = mesa
      @monto = monto
    end

    def maxdaily_income
       max_value = @monto.group_by { |x| x[0] }.max.last 
       index_day = @monto.index(@monto.compact.max) + 1
       max_value_i = max_value.join.to_i

       "Máxima recaudación en " + @mesa + " : " + max_value_i.to_s + " en día " + index_day.to_s
    end

end

def readfile_casino

    lines=[]

    File.open('casino.txt','r'){ |file| lines = file.readlines}

    lines.each do |line|
    ls = line.split(', ')

    objtable = Table.new(*ls)
    puts objtable.maxdaily_income
 
    
    end
end

readfile_casino
