class FormsController < ApplicationController
    def index
    
    end
    
    def create
        render plain: params[:email] 
    end
    
end