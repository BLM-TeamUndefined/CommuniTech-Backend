class ProfessionalsController < ApplicationController
  before_action :authorized, only: [:persist]

  def index
    @professionals = Professional.all

    render json: @professionals
  end

  def create
    @professional = Professional.create(professional_params)
    if @professional.valid?
      infoToSaveInBox = {professional_id: @professional.id}
      wristband = encode_token(infoToSaveInBox)
      render json: {professional: ProfessionalSerializer.new(@professional), token: wristband}
    else
      render json: {error: @professional.errors.full_messages}
    end
  end

  def update
    @professional.update(professional_params)

    render json: @professional
  end

  def destroy
    @professional.destroy

    render json: { status: 'OK'  }
  end

  def persist
    infoToSaveInBox = {professional_id: @professional.id}
    wristband = encode_token(infoToSaveInBox)
    render json: {professional: ProfessionalSerializer.new(@professional), token: wristband}
  end


  def login
    @professional = Professional.find_by(professionalname: params[:professionalname])
    if @professional && @professional.authenticate(params[:password])
      infoToSaveInBox = {professional_id: @professional.id}
      wristband = encode_token(infoToSaveInBox)
      render json: {professional: ProfessionalSerializer.new(@professional), token: wristband}
    else
      render json: {error: ["INCORRECT USERNAME OR PASSWORD"]}
    end
  end

  private

  def professional_params
    params.permit(:username, :email, :password)
  end

end
