class EmpresasController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
    @empresa = Empresa.new
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @reclamos = Reclamo.all.order('created_at DESC')
  end

  # GET /empresas/new
  def new
    
  end

  # GET /empresas/1/edit
  def edit

  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.create(empresa_params)

    respond_to do |format|
        format.js
    end 
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    @empresa.update(empresa_params)

    respond_to do |format|
        format.js
    end 
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
        format.js
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:name, :description)
    end
end
