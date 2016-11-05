class Super
	
	attr_accessor :name, :owner_name

end


class Plumber < Super

	def italian
		return "Let's A Go"
	end

end


class Princess < Super

	def royal
		return "Peachy"
	end
end

class Brother < Super

	def little
		return "I'm-a number one!"
	end
end


my_plumber = Plumber.new
my_plumber.name= "Mario"
plumber_name = my_plumber.name

my_princess = Princess.new
my_princess.name= "Peach"
princess_name = my_princess.name

my_brother = Brother.new
my_brother.name= "Luigi"
brother_name = my_brother.name


puts "#{plumber_name} says #{my_plumber.italian}, #{princess_name} says #{my_princess.royal}, #{brother_name} says #{my_brother.little}."


puts my_plumber.inspect
puts my_princess.inspect
puts my_brother.inspect
