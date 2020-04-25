class CandidatesController < ApplicationController
  # DRY principal
  before_action :find_candidate, only: [:show, :edit, :update, :destroy]
  
  def index
    @candidates = Candidate.all()
  end
  
  def new
    @candidate = Candidate.new
  end
  
  def create
    @candidate = Candidate.new(post_params);
    if @candidate.save
      redirect_to @candidate
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @candidate.update(post_params)
      redirect_to @candidate
    else
      render 'edit'
    end
  end
  
  def destroy
    @candidate.destroy
    redirect_to candidates_path
  end
  
  private
  
  def find_candidate
    @candidate = Candidate.find(params[:id])
  end
  
  # For security purpose and what attrs are supposed to be saved to our model
  def post_params
    params.require(:candidate).permit(:name, :phone, :city, :comment)
  end
end
