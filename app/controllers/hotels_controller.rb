class HotelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  # GET /hotels
  # GET /hotels.json
  def index
    authorize @hotels = Hotel.all
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # GET /hotels/1/edit
  def edit
    authorize @hotel
  end

  # POST /hotels
  # POST /hotels.json
  def create
    respond_to do |format|
      authorize @hotel = current_user.hotels.build(hotel_params)
      if @hotel.save
        format.html { redirect_to hotels_url, notice: I18n.t(:create, scope: [:generic, :confirmation]) }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    authorize @hotel
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to hotels_url, notice: I18n.t(:update, scope: [:generic, :confirmation]) }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    authorize @hotel
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to hotels_url, notice: I18n.t(:destroy, scope: [:generic, :confirmation]) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:name, :location, :price, facilities_attributes: [:id, :name, :_destroy])
    end
end
