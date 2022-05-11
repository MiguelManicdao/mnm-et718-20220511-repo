class LanguagesController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @Language = @resume.languages.create(language_params)
    redirect_to resume_path(@resume)
  end
  
  def destroy
    @resume = Resume.find(params[:resume_id])
    @language = @resume.languages.find(params[:id])
    @languag.destroy
    redirect_to resume_path(@resume)
  end
 
  private
    def language_params
      params.require(:language).permit(:title, :level)
    end
end

