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
		"Person id is #{self.object_id} and it's neigbour is #{@nbr}"
	end
end

class Ddly_Crl
	attr_accessor:crl
	def initialize(size)
		@crl = Array.new(size) {Person.new}
		nbr_asi
	end
	
	@private
	def nbr_asi #this method will assign id of an next adjacent object 
		@crl.each do |person|
			if @crl[-1] == person
				person.nbr = @crl[0].object_id #if object is the last element or an array it assign the id of the first element to make a circle
			else
				person.nbr = @crl[(@crl.index(person)+1)].object_id #it assign next element id to the current obcject
			end
		end
	end
end

x = Ddly_Crl.new(1)
puts x.crl