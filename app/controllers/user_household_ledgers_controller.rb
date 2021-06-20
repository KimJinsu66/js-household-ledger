class UserHouseholdLedgersController < ApplicationController
  before_action :set_user_household_ledger, only: %i[ show edit update destroy ]

  # GET /user_household_ledgers or /user_household_ledgers.json
  def index
    @user_household_ledgers = UserHouseholdLedger.all
  end

  # GET /user_household_ledgers/1 or /user_household_ledgers/1.json
  def show
  end

  # GET /user_household_ledgers/new
  def new
    @user_household_ledger = UserHouseholdLedger.new
  end

  # GET /user_household_ledgers/1/edit
  def edit
  end

  # POST /user_household_ledgers or /user_household_ledgers.json
  def create
    @user_household_ledger = UserHouseholdLedger.new(user_household_ledger_params)

    respond_to do |format|
      if @user_household_ledger.save
        format.html { redirect_to @user_household_ledger, notice: "User household ledger was successfully created." }
        format.json { render :show, status: :created, location: @user_household_ledger }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_household_ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_household_ledgers/1 or /user_household_ledgers/1.json
  def update
    respond_to do |format|
      if @user_household_ledger.update(user_household_ledger_params)
        format.html { redirect_to @user_household_ledger, notice: "User household ledger was successfully updated." }
        format.json { render :show, status: :ok, location: @user_household_ledger }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_household_ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_household_ledgers/1 or /user_household_ledgers/1.json
  def destroy
    @user_household_ledger.destroy
    respond_to do |format|
      format.html { redirect_to user_household_ledgers_url, notice: "User household ledger was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_household_ledger
      @user_household_ledger = UserHouseholdLedger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_household_ledger_params
      params.require(:user_household_ledger).permit(:user_id, :balance)
    end
end
