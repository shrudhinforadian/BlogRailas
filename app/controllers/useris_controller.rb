class UserisController < ApplicationController
  before_action :set_useri, only: [:show, :edit, :update, :destroy]

  # GET /useris
  # GET /useris.json
  def index
    @useris = Useri.all
  end

  # GET /useris/1
  # GET /useris/1.json
  def show
  end

  # GET /useris/new
  def new
    @useri = Useri.new
  end

  # GET /useris/1/edit
  def edit
  end

  # POST /useris
  # POST /useris.json
  def create
    @useri = Useri.new(useri_params)

    respond_to do |format|
      if @useri.save
        format.html { redirect_to @useri, notice: 'Useri was successfully created.' }
        format.json { render :show, status: :created, location: @useri }
      else
        format.html { render :new }
        format.json { render json: @useri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /useris/1
  # PATCH/PUT /useris/1.json
  def update
    respond_to do |format|
      if @useri.update(useri_params)
        format.html { redirect_to @useri, notice: 'Useri was successfully updated.' }
        format.json { render :show, status: :ok, location: @useri }
      else
        format.html { render :edit }
        format.json { render json: @useri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useris/1
  # DELETE /useris/1.json
  def destroy
    @useri.destroy
    respond_to do |format|
      format.html { redirect_to useris_url, notice: 'Useri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_useri
      @useri = Useri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def useri_params
      params.require(:useri).permit(:name, :email, :login)
    end
end
