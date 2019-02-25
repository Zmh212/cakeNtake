class ProdingrediantsController < ApplicationController
  before_action :set_prodingrediant, only: [:show, :edit, :update, :destroy]

  # GET /prodingrediants
  # GET /prodingrediants.json
  def index
    @prodingrediants = Prodingrediant.all
  end

  # GET /prodingrediants/1
  # GET /prodingrediants/1.json
  def show
  end

  # GET /prodingrediants/new
  def new
    @prodingrediant = Prodingrediant.new
  end

  # GET /prodingrediants/1/edit
  def edit
  end

  # POST /prodingrediants
  # POST /prodingrediants.json
  def create
    @prodingrediant = Prodingrediant.new(prodingrediant_params)

    respond_to do |format|
      if @prodingrediant.save
        format.html { redirect_to @prodingrediant, notice: 'Prodingrediant was successfully created.' }
        format.json { render :show, status: :created, location: @prodingrediant }
      else
        format.html { render :new }
        format.json { render json: @prodingrediant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodingrediants/1
  # PATCH/PUT /prodingrediants/1.json
  def update
    respond_to do |format|
      if @prodingrediant.update(prodingrediant_params)
        format.html { redirect_to @prodingrediant, notice: 'Prodingrediant was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodingrediant }
      else
        format.html { render :edit }
        format.json { render json: @prodingrediant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodingrediants/1
  # DELETE /prodingrediants/1.json
  def destroy
    @prodingrediant.destroy
    respond_to do |format|
      format.html { redirect_to prodingrediants_url, notice: 'Prodingrediant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodingrediant
      @prodingrediant = Prodingrediant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodingrediant_params
      params.require(:prodingrediant).permit(:productname, :categoryname, :quantity, :notes)
    end
end
