class Api::V1::VotersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Voters.all
  end

  def show
    @voter = Voters.find(params[:id])
    render json: @voter
  end

  def create
    @voter = Voters.new(voter_params)

    if @voter.save
      render json: @voter
    else
      render json: "Invalid parameters"
    end
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  private def voter_params
    params.require(:voter).permit(:name, :party)
  end
end
