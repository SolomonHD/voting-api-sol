class Api::V1::CandidatesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
    render json: @candidate
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      render json: @candidate
    else
      render json: "Invalid parameters"
    end
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  private def candidate_params
    params.require(:candidate).permit(:name, :party)
  end
end
