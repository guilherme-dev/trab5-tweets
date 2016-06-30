class BiosController < ApplicationController
  before_action :set_bio, only: [:show, :edit, :update]
  before_action :authenticate_user!

  # GET /bios
  # GET /bios.json
  def index
    @bios = Bio.all
  end

  # GET /bios/1
  # GET /bios/1.json
  def show
  end

  def perfil
    @bio = current_user.bio
    redirect_to "/bios/new", notice: 'Preencha seu perfil' unless @bio
  end 

  # GET /bios/new
  def new
    @bio = current_user.bio
    if @bio
        redirect_to @bio
      else
        @bio = Bio.new
      end
  end

  # GET /bios/1/edit
  def edit
    redirect_to "/", notice: 'Você não tem a permissão necessária' unless current_user == @bio.user
  end

  # POST /bios
  # POST /bios.json
  def create
    @bio = Bio.new(bio_params)

    respond_to do |format|
      if @bio.save
        format.html { redirect_to @bio, notice: 'Feito!'}
        format.json { render :show, status: :created, location: @bio}
      else
        format.html { render :new }
        format.json { render json: @bio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bios/1
  # PATCH/PUT /bios/1.json
  def update
    respond_to do |format|
      if @bio.update(bio_params)
        format.html { redirect_to @bio, notice: 'Suas informações foram atualizadas' }
        format.json { render :show, status: :ok, location: @bio }
      else
        format.html { render :edit }
        format.json { render json: @bio.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bio
      @bio = Bio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bio_params
      params.require(:bio).permit(:user_id, :name, :website, :city)
    end
end
