require_relative "calculator"

RSpec.describe Calculator do
	before do
		@calculator = Calculator.new
	end

	it "has one instance variable answer with default value of 0" do
		expect(@calculator.answer).to eq(0)
	end

	describe "addition" do
		it "adds with one argument" do
			@calculator.add(5)
			expect(@calculator.answer).to eq(5)
			@calculator.add(10)
			expect(@calculator.answer).to eq(15)
		end
		it "adds with an array of numbers" do
			@calculator.add([5, 2])
			expect(@calculator.answer).to eq(7)
			@calculator.add([1, 2, 3])
			expect(@calculator.answer).to eq(13)
		end
	end

	describe "subtraction" do
		it "subtracts with one argument" do
			@calculator.subtract(5)
			expect(@calculator.answer).to eq(-5)
			@calculator.subtract(10)
			expect(@calculator.answer).to eq(-15)
		end
		it "subtracts with an array of numbers" do
            @calculator.subtract([5, 2])
            expect(@calculator.answer).to eq(-7)
            @calculator.subtract([1,2,3])
            expect(@calculator.answer).to eq(-13)
		end
	end
    describe "chained addition and subtraction" do
        it "adds and subtracts with one argument" do
            @calculator.subtract(10).add(5)
            expect(@calculator.answer).to eq(-5)
        end
        it "adds and subtracts with arrays of numbers" do
            @calculator.add([1, 2, 3]).subtract([1, 2])
            expect(@calculator.answer).to eq(3)
            @calculator.answer = 0
            @calculator.add([1, 2, 3]).subtract(1).add(3).subtract([8, 24])
            expect(@calculator.answer).to eq(-24)
        end
    end
end