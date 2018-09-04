class ClientsController < ApplicationController
	
	def index
		@clients = Client.all
	end

	def show

	end

	def new		
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def client_params
		params.require(:client).permit(:name, :client_id, :name_project, :staging_url, :production_url)
	end
	
end