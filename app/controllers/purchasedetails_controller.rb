class PurchasedetailsController < ApplicationController
  before_action :set_purchasedetail, only: [:show, :edit, :update, :destroy]

  # GET /purchasedetails
  # GET /purchasedetails.json
  def index
    @purchasedetails = Purchasedetail.all
  end

  # GET /purchasedetails/1
  # GET /purchasedetails/1.json
  def show
  end

  # GET /purchasedetails/new
  def new
    @purchasedetail = Purchasedetail.new
  end

  # GET /purchasedetails/1/edit
  def edit
  end

  # POST /purchasedetails
  # POST /purchasedetails.json
  def create
    @purchasedetail = Purchasedetail.new(purchasedetail_params)

    respond_to do |format|
      if @purchasedetail.save
        format.html { redirect_to @purchasedetail, notice: 'Purchasedetail was successfully created.' }
        format.json { render :show, status: :created, location: @purchasedetail }
      else
        format.html { render :new }
        format.json { render json: @purchasedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchasedetails/1
  # PATCH/PUT /purchasedetails/1.json
  def update
    respond_to do |format|
      if @purchasedetail.update(purchasedetail_params)
        format.html { redirect_to @purchasedetail, notice: 'Purchasedetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchasedetail }
      else
        format.html { render :edit }
        format.json { render json: @purchasedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchasedetails/1
  # DELETE /purchasedetails/1.json
  def destroy
    @purchasedetail.destroy
    respond_to do |format|
      format.html { redirect_to purchasedetails_url, notice: 'Purchasedetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchasedetail
      @purchasedetail = Purchasedetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchasedetail_params
      params.require(:purchasedetail).permit(:purchase_id, :product_id, :saleprice)
    end
end
