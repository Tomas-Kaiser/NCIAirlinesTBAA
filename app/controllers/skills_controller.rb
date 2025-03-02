class SkillsController < ApplicationController
    
    def create
        @candidate = Candidate.find(params[:candidate_id])
        @skill = @candidate.skills.create(skill_params)
        redirect_to candidate_path(@candidate)
    end
    
    def destroy
        @candidate = Candidate.find(params[:candidate_id])
        @skill = @candidate.skills.find(params[:id]) 
        @skill.destroy
        redirect_to candidate_path(@candidate)
    end
    
    def show
        @skills = Skill.all
    end
    
    private
    # For security purpose and what attrs are supposed to be saved to our model
    def skill_params
        params.require(:skill).permit(:name, :experience, :typeOfSkill)
    end
    
end
