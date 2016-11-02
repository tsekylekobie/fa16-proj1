class PokemonsController < ApplicationController
	def capture
		pokemon  = Pokemon.find(params[:id])
		pokemon.trainer = current_trainer
		pokemon.save!
		redirect_to '/'
	end
	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		pokemon.save!
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(current_trainer)
	end
	def new
		@pokemon = Pokemon.new
	end
	def create
		begin
			@pokemon = Pokemon.new
			@pokemon.update_attributes(:name => params[:pokemon][:name], :level => 1, :health => 100, :trainer => current_trainer)
			@pokemon.save!
		rescue
			flash[:error] = "Cannot create Pokemon. Please try again."
		end
		redirect_to trainer_path(current_trainer)
	end
end
