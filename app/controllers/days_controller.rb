class DaysController < ApplicationController
	def new
		@day = Day.new
	end

	def create
		@day = Day.new(day_params)
		if @day.save
			redirect_to plans_path
		else
			render :new
		end
	end

	def edit
		@day = Day.find(params[:id])
	end

	def update
		@day = Day.find(params[:id])

		if @day.update_attributes(day_params)
			redirect_to plans_path
		else
			render :edit
		end
	end

	def destroy
		@day = Day.find(params[:id])
		@day.destroy
		redirect_to plans_path
	end

	private
	def day_params
		params.require(:day).permit(:title, :microcycle_id)
	end
end
