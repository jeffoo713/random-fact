module Api
  module V1
    class FactsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        facts = Fact.all

        render json: facts
      end

      def show
        fact = Fact.find_by(id: params[:id])

        render json: fact
      end

      def create
        fact = Fact.new(fact_params)

        if fact.save
          render json: fact
        else
          render json: {error: fact.errors.messages }, status: 422
        end
      end
      
      def update
        fact = Fact.find_by(id: params[:id])

        if fact.update(fact_params)
          render json: fact
        else
          render json: {error: fact.errors.messages }, status: 422
        end
      end

      def destroy 
        fact = Fact.find_by(id: params[:id])

        if fact.destroy
          render json: "the fact is deleted successfully", status: 200
        else
          render json: {error: fact.errors.messages }, status: 422
        end
      end
      
      private

      def fact_params
        params.require(:fact).permit(:id, :content, :creator)
      end
      
      # to bring related data (compound document)
      def options
        @options ||= { include: %i[comments] }        
      end
      
    end
  end
end