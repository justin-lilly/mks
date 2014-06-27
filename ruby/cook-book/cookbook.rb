class Cookbook  #Creates a class to hold cookbooks
	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = [];
	end

	def add_recipe (recipe)
		@recipes << recipe
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles
		@recipes.each {|x| puts x.title}
	end

	def recipe_ingredients
		@recipes.each {|x| puts "These are the ingredients for #{x.title}: #{x.ingredients}"}
	end

	def print_cookbook
		@recipes.each do |x| 
			puts "Recipe: #{x.title} \nIngredients: #{x.ingredients.join(", ")} \nSteps: "
			x.steps.each_with_index {|x,index| index+=1; puts "#{index}. " + x}
		end
	end

	def remove_recipe(recipe)
		@recipes.delete(recipe)
		puts "#{recipe.title} has been removed from #{@title}"
	end


	# def title
	# 	@title
	# end

	# def title=(new_title)
	# 	@title = new_title
	# end

end


class Recipe    #Creates a class to hold recipes
	attr_accessor :title
	attr_accessor :steps
	attr_accessor :ingredients

	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "Recipe: #{@title}"
		puts "Ingredients: " + @ingredients.join(", ")
		puts "Steps:"
		@steps.each_with_index {|x,index| index+=1; puts "#{index}. " + x}
	end

	def change_step
		print_recipe
		condition = true;
		while(condition)
			print "Which step # do you want to change? "
			step = gets.chomp.to_i
			if (step > 0 && step <= @steps.length)
				print "What should the step be? "
				instruction = gets.chomp
				@steps[step-1]=instruction
				print_recipe
				condition = false
			else 
				puts "That is not a step number."
			end
		end 

	end


	# def title
	# 	@title
	# end

	# def title=(new_title)
	# 	@title = new_title
	# end

	# def ingredients
	# 	@ingredients
	# end

	# def ingredients=(new_ingredients)
	# 	@ingredients = new_ingredients
	# end

	# def steps
	# 	@steps
	# end

	# def steps=(new_steps)
	# 	@steps = new_steps
	# end

end
