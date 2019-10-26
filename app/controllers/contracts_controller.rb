class ContractsController < ApplicationController

    def new
        @contract = Contract.new
    end 

    def create
        # byebug
        @contract = Contract.create(contract_params)
        redirect_to contract_path(@contract) 
    end 

    
    def show
        @contract = Contract.find(params[:id])
    end 
    
    def edit
        @contract = Contract.find(params[:id])
    end
    
    def update
        @contract = Contract.create(params.require(:contract).permit(:price))
        redirect_to contract_path(@contract)
    end 

    def destroy
        @contract = Contract.find(params[:id])
        @contract.destroy
        redirect_to @contract.artist
    end 

    private 

    def contract_params
        params.require(:contract).permit(:artist_id, :beat_id, :price)
    end     


end
