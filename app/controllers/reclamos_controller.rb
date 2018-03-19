class ReclamosController < ApplicationController
	def create
		@empresa = Empresa.find(params[:empresa_id])
		@reclamo = Reclamo.new(contenido:params[:reclamo][:contenido], user: current_user)
		@reclamo.empresa = @empresa
		@reclamo.save
	end
end
