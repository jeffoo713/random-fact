module Api
  module V1
    class CommentsController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        comment = Comment.new(comment_params)

        if comment.save
          render json: comment
        else
          render json: { error: comment.errors.messages }, status: 422
        end
      end
      
      def destroy
        comment = Comment.find_by(id: params[:id])
                
        if comment.destroy
          render json: "the comment is deleted successfully", status: 200 
        else
          render json: { error: comment.errors.messages }, status: 422
        end
      end

      private
      
      def comment_params
        params.require(:comment).permit(:id, :content, :creator, :stars, :fact_id)
      end
      
    end
  end
end