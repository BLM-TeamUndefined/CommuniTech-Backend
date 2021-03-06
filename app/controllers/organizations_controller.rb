class OrganizationsController < ApplicationController
  before_action :authorized, only: [:persist]
  before_action :set_org, only: [:update, :show, :destroy]

  def index
    @organizations = Organization.all
    @projects = Project.all
    render json: {organizations: @organizations, projects: @projects }
  end

  def show
    @organization = Organization.find(params[:id])
    render json: {organization: @organization, projects: @organization.projects }
  end

  def show
    render json: { organization: @organization, projects: @organization.projects } 
  end

  def create
    @organization = Organization.create(organization_params)
    if @organization.valid?
      infoToSaveInBox = {organization_id: @organization.id}
      wristband = encode_token(infoToSaveInBox)
      render json: {organization: OrganizationSerializer.new(@organization), token: wristband}
    else
      render json: {error: @organization.errors.full_messages}
    end
  end

  def update
    @organization.update(organization_params)

    render json: @organization
  end

  def destroy
    @organization.destroy

    render json: { status: 'OK'  }
  end

  # Uncomment for login and persist features
  # def persist
  #   infoToSaveInBox = {organization_id: @organization.id}
  #   wristband = encode_token(infoToSaveInBox)
  #   render json: {organization: OrganizationSerializer.new(@organization), token: wristband}
  # end
  #
  #
  # def login
  #   @organization = Organization.find_by(email: params[:email])
  #   if @organization && @organization.authenticate(params[:password])
  #     infoToSaveInBox = {organization_id: @organization.id}
  #     wristband = encode_token(infoToSaveInBox)
  #     render json: {organization: OrganizationSerializer.new(@organization), token: wristband}
  #   else
  #     render json: {error: ["INCORRECT EMAIL OR PASSWORD"]}
  #   end
  # end

  private

  def set_org
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.permit(:name, :category, :email, :phone, :mission, :location, :image, :website, :twitter, :instagram, :facebook, :logo)
  end

end
