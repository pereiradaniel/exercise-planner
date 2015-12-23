class MacrocyclesController < ApplicationController

	def new
		@macrocycle = Macrocycle.new
	end

	def create
		@macrocycle = Macrocycle.new(macrocycle_params)
		if @macrocycle.save
			redirect_to plans_path
		else
			render :new
		end
	end

	def edit
		@macrocycle = Macrocycle.find(params[:id])
	end

	def update
		@macrocycle = Macrocycle.find(params[:id])

		if @macrocycle.update_attributes(macrocycle_params)
			redirect_to plans_path
		else
			render :edit
		end
	end

	def destroy
		@macrocycle = Macrocycle.find(params[:id])
		@macrocycle.destroy
		redirect_to plans_path
	end

	private
	def macrocycle_params
		params.require(:macrocycle).permit(:title, :start_date, :end_date, :plan_id)
	end

end
