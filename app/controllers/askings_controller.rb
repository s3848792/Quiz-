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
    if Asking.sum("answered") <4
      respond_to do |format|
        if @asking.update(asking_params)
          format.html { redirect_to random_url}
          format.json { render :show, status: :ok, location: @asking }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @asking.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if @asking.update(asking_params)
          format.html { redirect_to results_url}
          format.json { render :show, status: :ok, location: @asking }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @asking.errors, status: :unprocessable_entity }
        end
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
    if @question.answered == 1
      redirect_to random_url
    else
    @question.answered = 1
    @question.save
    redirect_to @question
    end
  end
  
  def results
    Asking.where("selectedanswer != 'nil'").each do |q|
      if q.answer_a_correct == "true"
        if q.answer_a == q.selectedanswer
          q.score = 1
        end
      end
      if q.answer_b_correct == "true"
        if q.answer_b == q.selectedanswer
          q.score = 1
        end
      end
      if q.answer_c_correct == "true"
        if q.answer_c == q.selectedanswer
          q.score = 1
        end
      end
      if q.answer_d_correct == "true"
        if q.answer_d == q.selectedanswer
          q.score = 1
        end
      end
      if q.answer_e_correct == "true"
        if q.answer_e === q.selectedanswer
          q.score = 1
        end
      end
      if q.answer_f_correct == "true"
        if q.answer_f == q.selectedanswer
          q.score = 1
        end
      end
      q.save
    end
    x = Asking.sum("score")
    if x > Asking.first.high_score
      Asking.all.each do |q|
        q.high_score = x
        q.save
     end
    end
   Record.create(numberCorrect: x, attemptsAgo: 0)
  end
  
  def reset
    Asking.all.each do |q|
      q.answered = 0
      q.selectedanswer = nil
      q.score = 0
      q.save
    end
    Record.all.each do |r|
      r.attemptsAgo = r.attemptsAgo+1
      r.save
    end
    redirect_to random_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asking
      @asking = Asking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asking_params
      params.require(:asking).permit(:question, :description, :answers, :multiple_correct_answers, :correct_answers, :selectedanswer)
    end
end
