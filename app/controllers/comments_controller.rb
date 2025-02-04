class CommentsController < ApplicationController

    before_action :find_comment, only: :show

    def index
      @comments = Comment.all
    end

    def new
      @comment = Comment.new
    end

    def create
      @comment = Comment.new(comment_params)

      respond_to do |format|
        if @comment.save
          format.html  { redirect_to(@comment, notice: 'Added comment.') }
        else
          render :new
        end
      end       
    end

    def show

    end

    private

      def find_comment
        @comment = Comment.find(params[:id])
      end

      def comment_params
        params.expect(comment: [:comments, :status])
      end
end
