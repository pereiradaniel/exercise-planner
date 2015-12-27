class MicrocyclesController < ApplicationController
	def new
		@microcycle = Microcycle.new
	end

	def create
		@microcycle = Microcycle.new(microcycle_params)
		if @microcycle.save
			redirect_to plans_path
		else
			render :new
		end
	end

	def edit
		@microcycle = Microcycle.find(params[:id])
	end

	def update
		@microcycle = Microcycle.find(params[:id])

		if @microcycle.update_attributes(microcycle_params)
			redirect_to plans_path
		else
			render :edit
		end
	end

	def destroy
		@microcycle = Microcycle.find(params[:id])
		@microcycle.destroy
		redirect_to plans_path
	end

	private
	def microcycle_params
		params.require(:microcycle).permit(:title, :mesocycle_id)
	end
end
