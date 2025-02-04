class ProjectStatusCommentsController < ApplicationController

    def index
      @comments = Comment.all
      @statuses = Status.all
    end

    def new
      @comment = Comment.new
      @status = Status.new
    end
end