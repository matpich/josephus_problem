

class Ddly_Crl
	class Person
		@@id = 0
		
		attr_accessor:sword, :nbr, :num
		
		def initialize
			@@id += 1
			@sword = false
			@nbr = nil 
			@num = @@id
		end
		
		def to_s
			"Person number is #{@num} and it's neighbor is #{@nbr.num}."
		end
	end	

	attr_accessor:crl
	
	def initialize(size)
		@crl = Array.new(size) {Person.new}
		nbr_asi
	end
	
	@private
	def nbr_asi #this method will assign next adjacent object 
		@crl.each do |person|
			if @crl[-1] == person
				person.nbr = @crl[0] #if object is the last element or an array it assign the first element to make a circle
			else
				person.nbr = @crl[@crl.index(person)+1]#it assign next element
			end
		end
	end

	def kll_pss(person) #this method will kill object neighbor and pass "sword" to the next one
		if person.sword?
			tmp_nbr = person.nbr.nbr #it assign the "victims" neighbor
		end	
	end	
end

x = Ddly_Crl.new(8)
puts x.crl