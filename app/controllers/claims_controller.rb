class ClaimsController < ApplicationController
  before_action :authenticate_user!

  def create
    @company = Company.find(params[:company_id])
		@claim = Claim.new(description:params[:claim][:description], user: current_user)
		@company.claims << @claim
		@claim.save
  end

  def destroy
		@company = Company.find(params[:company_id])
		@claim = Claim.find(params[:id])
		@claim.destroy
	end

	def edit
		@company = Company.find(params[:company_id])
		@claim = Claim.find(params[:id])
	end

	def update
		@claim = Claim.find(params[:id])
		@claim.update(content: params[:claim][:description])
	end
end
