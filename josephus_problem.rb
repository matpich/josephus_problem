class Person
	@@id = 0
	
	attr_accessor:sword, :nbr, :num
	
	def initialize
		@@id += 1
		@sword = false
		@nbr = nil 
		@num = @@id
	end
end

class Ddly_Crl
	attr_accessor:crl
	def initialize(size)
		@crl = Array.new(size) {Person.new}
	end
	
	def nbr_asi
		@crl.each do |person|
			person.nbr = @crowd.index(person)
	end
end