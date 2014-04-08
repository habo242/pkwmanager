class PkwsController < ApplicationController
  before_action :set_pkw, only: [:show, :edit, :update, :destroy]

  # GET /pkws
  # GET /pkws.json
  def index
    @pkws = Pkw.all
  end

  # GET /pkws/1
  # GET /pkws/1.json
  def show
  end

  # GET /pkws/new
  def new
    @pkw = Pkw.new
  end

  # GET /pkws/1/edit
  def edit
  end

  # POST /pkws
  # POST /pkws.json
  def create
    @pkw = Pkw.new(pkw_params)

    respond_to do |format|
      if @pkw.save
        format.html { redirect_to @pkw, notice: 'Pkw was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pkw }
      else
        format.html { render action: 'new' }
        format.json { render json: @pkw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pkws/1
  # PATCH/PUT /pkws/1.json
  def update
    respond_to do |format|
      if @pkw.update(pkw_params)
        format.html { redirect_to @pkw, notice: 'Pkw was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pkw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pkws/1
  # DELETE /pkws/1.json
  def destroy
    @pkw.destroy
    respond_to do |format|
      format.html { redirect_to pkws_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pkw
      @pkw = Pkw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pkw_params
      params.require(:pkw).permit(:marke, :modell, :kilometerstand, :tüv)
    end
end
