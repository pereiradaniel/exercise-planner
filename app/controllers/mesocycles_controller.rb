class MesocyclesController < ApplicationController

	def new
		@mesocycle = Mesocycle.new
	end

	def create
		@mesocycle = Mesocycle.new(mesocycle_params)
		if @mesocycle.save
			redirect_to plans_path
		else
			render :new
		end
	end

	def edit
		@mesocycle = Mesocycle.find(params[:id])
	end

	def update
		@mesocycle = Mesocycle.find(params[:id])

		if @mesocycle.update_attributes(mesocycle_params)
			redirect_to plans_path
		else
			render :edit
		end
	end

	def destroy
		@mesocycle = Mesocycle.find(params[:id])
		@mesocycle.destroy
		redirect_to plans_path
	end

	private
	def mesocycle_params
		params.require(:mesocycle).permit(:title, :macrocycle_id)
	end

end
