=begin
class Pet

	def pet_sound(sound)
		@sound = sound
	end

	def speak
		Kernel.puts("#{@sound}")
	end

	def rollover(treat_present) #boolean input
		puts treat_present ? "Rollover" : "Refuse"
	end

	def name(dog_name="sparky")
		puts "Dog name: #{dog_name}";
	end

end

class Animal
	def name(name)
		@name = name
		@age = 13
		@type = "Jackal"
		@cat = true
	end


	def type(animal_type="cat")
		puts "Animal: #{animal_type}"
	end

	def num_legs(num)
		puts num==4 ? "Must be a cat.": "Either deformed cat or doesn't matter."
	end

end

class Marker

	def set_color(my_color)
		@color = my_color
	end

	def write
		Kernel.puts("I am writing with a #{@color} marker!")
	end
end
=end

puts 5.send(:*,5)
puts "omg".send(:upcase)
puts ['a','b','c'].send(:at,1)
array = ['a','b','c'].send(:insert,2)
print array
#puts {}.send(:size)
hash2 = {:character => "Mario"}.send(:has_key?,:character)
puts hash2
