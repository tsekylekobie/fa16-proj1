# Q0: Why is this error being thrown?
	No Pokemon model exists yet so we cannot create an instance of it.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	In the home controller index method, a pokemon is being randomly selected (via .sample) from the generated pokemon. All the Pokemon generated are the starters found in the seed file.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	It follows the route with the `capture` prefix and @pokemon passed as an argument via the symbol `:id`.
# Question 3: What would you name your own Pokemon?
	I would name my Pokemon 'Kobe', 'Lillard', and 'Westbrook'.
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	I passed redirect_to into a path-- trainer_path. The path takes the current trainer as an input.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	It unyields the 'layouts/messages' of application.html.erb. _messages.html.erb displays the right hand side of the flash[:error] line.
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
