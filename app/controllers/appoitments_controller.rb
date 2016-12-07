class AppoitmentsController < ApplicationController
  before_action :set_appoitment, only: [:show, :edit, :update, :destroy]

  # GET /appoitments
  def index
    @appoitments = Appoitment.all
  end

  def current
    @appoitments = Appoitment.all

    render json: @appoitments
  end
  # GET /appoitments/1
  def show
  end

  # GET /appoitments/new
  def new
    @appoitment = Appoitment.new
  end

  # GET /appoitments/1/edit
  def edit
  end

  # POST /appoitments
  def create
    @appoitment = Appoitment.new(appoitment_params)

    if @appoitment.save
      redirect_to @appoitment, notice: 'Appoitment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /appoitments/1
  def update
    if @appoitment.update(appoitment_params)
      redirect_to @appoitment, notice: 'Appoitment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /appoitments/1
  def destroy
    @appoitment.destroy
    redirect_to appoitments_url, notice: 'Appoitment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoitment
      @appoitment = Appoitment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appoitment_params
      params.require(:appoitment).permit(:expected_at, :pet_id, :reason)
    end
end
