class StatusesController < ApplicationController
  
    before_action :find_status, only: :show

    def create
      @status = Status.new(status_params)

      respond_to do |format|
        if @status.save
          format.html  { redirect_to(@status, notice: 'Added status change.') }
        else
          render :new
        end
      end       
    end

    def show; end

    private

      def find_status
        @status = Status.find(params[:id])
      end

      def status_params
        params.expect(status: [:project_status])
      end
end
