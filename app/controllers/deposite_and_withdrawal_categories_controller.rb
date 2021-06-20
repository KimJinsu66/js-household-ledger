class DepositeAndWithdrawalCategoriesController < ApplicationController
  before_action :set_deposite_and_withdrawal_category, only: %i[ show edit update destroy ]

  # GET /deposite_and_withdrawal_categories or /deposite_and_withdrawal_categories.json
  def index
    @deposite_and_withdrawal_categories = DepositeAndWithdrawalCategory.all
  end

  # GET /deposite_and_withdrawal_categories/1 or /deposite_and_withdrawal_categories/1.json
  def show
  end

  # GET /deposite_and_withdrawal_categories/new
  def new
    @deposite_and_withdrawal_category = DepositeAndWithdrawalCategory.new
  end

  # GET /deposite_and_withdrawal_categories/1/edit
  def edit
  end

  # POST /deposite_and_withdrawal_categories or /deposite_and_withdrawal_categories.json
  def create
    @deposite_and_withdrawal_category = DepositeAndWithdrawalCategory.new(deposite_and_withdrawal_category_params)

    respond_to do |format|
      if @deposite_and_withdrawal_category.save
        format.html { redirect_to @deposite_and_withdrawal_category, notice: "Deposite and withdrawal category was successfully created." }
        format.json { render :show, status: :created, location: @deposite_and_withdrawal_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deposite_and_withdrawal_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deposite_and_withdrawal_categories/1 or /deposite_and_withdrawal_categories/1.json
  def update
    respond_to do |format|
      if @deposite_and_withdrawal_category.update(deposite_and_withdrawal_category_params)
        format.html { redirect_to @deposite_and_withdrawal_category, notice: "Deposite and withdrawal category was successfully updated." }
        format.json { render :show, status: :ok, location: @deposite_and_withdrawal_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deposite_and_withdrawal_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deposite_and_withdrawal_categories/1 or /deposite_and_withdrawal_categories/1.json
  def destroy
    @deposite_and_withdrawal_category.destroy
    respond_to do |format|
      format.html { redirect_to deposite_and_withdrawal_categories_url, notice: "Deposite and withdrawal category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposite_and_withdrawal_category
      @deposite_and_withdrawal_category = DepositeAndWithdrawalCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deposite_and_withdrawal_category_params
      params.require(:deposite_and_withdrawal_category).permit(:name)
    end
end
