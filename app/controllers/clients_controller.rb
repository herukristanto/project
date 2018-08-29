class ClientsController < ApplicationController
	
	def index
		@clients = Client.joins(:projeks).all
	end

	def show
		@client = Client.joins(:projeks).find(params[:id])
	end

	def new
		@client = Client.joins(:projeks).new			
	end

	def create
		@client = Client.joins(:projeks).new(client_params)
		if 	@client.save
			redirect_to clients_path
		else
			render 'new'
		end
	end

	def edit
		@client = Client.joins(:projeks).find(params[:id])
	end

	def update
		@client = Client.joins(:projeks).find(params[:id])

		if 	@client.update(client_params)
			redirect_to clients_path
		else
			render 'edit'
		end
	end

	def destroy
		@client = Client.find(params[:id]).projeks('id')
		@client.destroy
		redirect_to clients_path
	end

	private

	def client_params
		params.require(:client, :projeks).permit(:id, :name, :id, :client_id, :name_project, :staging_url, :production_url)
	end
end