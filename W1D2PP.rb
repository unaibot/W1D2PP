


class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end



class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    	@salary = ""
    end

    def calculate_salary

    	@salary = @hourly_rate * @hours_worked
    	

      #returns the hours worked * hourly_rate
    end
end 


class SalariedEmployee < Employee
     
     def initialize (name, email, yearlysalary)

     @name = name
     @email = email
     @yearlysalary = yearlysalary 
     @salary = ""
 	 end


 	 def calculate_salary

 	 	@salary = @yearlysalary / 52


 	 end
 	end

class MultiPaymentEmployee < Employee

	def initialize (name, email, yearlysalary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@yearlysalary = yearlysalary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
		@salary = ""
	end

	def calculate_salary 

		@salary = (@yearlysalary/52) + ((@hours_worked - 40) * @hourly_rate)

	end
end
class Payroll
    def initialize(employees)
        @employees = employees
        @payroll =""

    end

  	def pay_employees
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
      capital=0
      @employees.each do|employees|
      	capital +=  employees.calculate_salary 
      end
      @payroll = capital

  	end
end




######################################################
josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
unai = HourlyEmployee.new("Unai","unaunpp@hmail.com",15,40)
pablo = HourlyEmployee.new("Pablo","pablopp@hmail.com",15,40)

puts unai.calculate_salary
puts nizar.calculate_salary
puts ted.calculate_salary


employees = [josh, nizar, ted, pablo, unai]
payroll = Payroll.new(employees)

puts payroll.pay_employees


