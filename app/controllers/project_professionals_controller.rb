class ProjectProfessionalsController < ApplicationController
    def create
        project_professional = ProjectProfessional.create(project_professional_params)
        render json: project_professional
    end

    def destroy
        project_professional = ProjectProfessional.find(params[:id])
        project_professional.destroy
    end

    private
    def project_professional_params
        params.permit(:project_id, :professional_id)
    end
end
