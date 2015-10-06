class Calculator
	attr_accessor :answer
	def initialize 
		@answer = 0
	end

	def add(item)
		if item.class == Array
			for i in 0...item.length
				@answer += item[i]
			end
			# @answer
		else
			@answer += item
		end
		self
	end

	def subtract(item)
		if item.class == Array
			for i in 0 ... item.length
				@answer -= item[i]
			end
		else
			@answer -= item
		end
		self
	end

end