class PlansController < ApplicationController

	def home
	end

	def index
		@plans = Plan.where("user_id", "%{current_user.id}%")
	end

	def new
		@plan = Plan.new
	end

	def create
		@plan = Plan.new(plan_params)
		if @plan.save
			redirect_to plans_path
		else
			render :new
		end
	end

	def edit
	end

	def destroy
		@plan = Plan.find(params[:id])
		@plan.destroy
		redirect_to plans_path
	end

	private
	def plan_params
		params.require(:plan).permit(:user_id)
	end

end
