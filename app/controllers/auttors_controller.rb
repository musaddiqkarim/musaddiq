class AuttorsController < ApplicationController
  before_action :set_auttor, only: [:show, :edit, :update, :destroy]
  

  # GET /auttors
  # GET /auttors.json
  def index
    @auttors = Auttor.all
  end

  # GET /auttors/1
  # GET /auttors/1.json
  def show
  end

  # GET /auttors/new
  def new
    @auttor = Auttor.new
  end

  # GET /auttors/1/edit
  def edit
  end

  # POST /auttors
  # POST /auttors.json
  def create
    @auttor = Auttor.new(auttor_params)

    respond_to do |format|
      if @auttor.save
        format.html { redirect_to @auttor, notice: 'Auttor was successfully created.' }
        format.json { render :show, status: :created, location: @auttor }
      else
        format.html { render :new }
        format.json { render json: @auttor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auttors/1
  # PATCH/PUT /auttors/1.json
  def update
    respond_to do |format|
      if @auttor.update(auttor_params)
        format.html { redirect_to @auttor, notice: 'Auttor was successfully updated.' }
        format.json { render :show, status: :ok, location: @auttor }
      else
        format.html { render :edit }
        format.json { render json: @auttor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auttors/1
  # DELETE /auttors/1.json
  def destroy
    @auttor.destroy
    respond_to do |format|
      format.html { redirect_to auttors_url, notice: 'Auttor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auttor
      @auttor = Auttor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auttor_params
      params.require(:auttor).permit(:authorid, :authorname)
    end
end
