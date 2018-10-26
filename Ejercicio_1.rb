class Table

    def initialize(mesa,*monto)
     
         @mesa = mesa
        # @redone = redone
        # @redtwo= redtwo
        # @redthree= redthree
        # @redfour= redfour

        @monto = monto
       
    end

     def maxdailyincome
     # Conocer el mayor valor recaudado, por mesa, y el nombre de la mesa y día corresponde (día 1, día 2, día 3 o día 4).
       count = 0
       #@row = { one: @redone , two: @redtwo , trhee: @redthree, four:@redfour}
       row =  @monto
       #max = row.values.max 
       #whatkey = @ow.key(max)

       print row
      

      # puts @mesa + ": " + max.to_s + " in day: " +whatkey.to_s
     end

end

def readfileCasino

    lines=[]

    File.open('casino.txt','r'){ |file| lines = file.readlines}

    lines.each do |line|
        ls = line.split(', ')

      objtable = Table.new(*ls)
      
      max = objtable.maxdailyincome
      puts max
    end
end

readfileCasino
