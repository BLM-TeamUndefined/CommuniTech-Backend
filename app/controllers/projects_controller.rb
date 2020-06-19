class ProjectsController < ApplicationController
    def index
        projects = Project.all
        render json: projects
    end

    def create
        project = Project.create(project_params)
        render json: project
    end

    def update
        project = Project.find(params[:id])
        project.update(project_params)
        render json: project
    end

    def destroy
        project = Project.find(params[:id])
        project.destroy
    end

    private
    def project_params
        params.permit(:name,:description,:expectations,:timeline,:team_size,:organization_id)
    end
end
