class AskingsController < ApplicationController
  before_action :set_asking, only: %i[ show edit update destroy ]

  # GET /askings or /askings.json
  def index
    @askings = Asking.all
  end

  # GET /askings/1 or /askings/1.json
  def show
  end

  # GET /askings/new
  def new
    @asking = Asking.new
  end

  # GET /askings/1/edit
  def edit
  end

  # POST /askings or /askings.json
  def create
    @asking = Asking.new(asking_params)

    respond_to do |format|
      if @asking.save
        format.html { redirect_to @asking, notice: "Asking was successfully created." }
        format.json { render :show, status: :created, location: @asking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @asking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /askings/1 or /askings/1.json
  def update
    respond_to do |format|
      if @asking.update(asking_params)
        format.html { redirect_to @asking, notice: "Asking was successfully updated." }
        format.json { render :show, status: :ok, location: @asking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @asking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /askings/1 or /askings/1.json
  def destroy
    @asking.destroy
    respond_to do |format|
      format.html { redirect_to askings_url, notice: "Asking was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def random
    offset = rand(10)
    @question = Asking.offset(offset).first
    redirect_to @question
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asking
      @asking = Asking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asking_params
      params.require(:asking).permit(:question, :description, :answers, :multiple_correct_answers, :correct_answers)
    end
end
