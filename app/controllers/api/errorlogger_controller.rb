class Api::ErrorloggerController < ApplicationController
      # before_action :set_debug_message, only: [ :show ]


      def create
        @debug_message = ErrorLog.new(debug_message_params)

        if @debug_message.save
          render json: { message: "Debug message created successfully", data: @debug_message }, status: :created
        else
          render json: { error: "Failed to create debug message", details: @debug_message.errors }, status: :unprocessable_entity
        end
      end

      def index
        @debug_messages = ErrorLog.all
        render json: @debug_messages
      end

      def show
        render json: @debug_message
      end


      def test
        render json: { message: params[:service_name] }
      end

      def get_by_service_name
        @debug_messages = ErrorLog.where(service_name: params[:service_name])
        render json: @debug_messages
      end

      def geterrormessage_by_id
        @debug_messages = ErrorLog.find_by(id: params[:id])
        render json: @debug_messages
      end



      private


  # def debug_message_params
  #   params.require(:error_log).permit(:service_name, :by_id, :debug_message, :error_type, :error_line, :meta_data, :timestamp)
  # end


  # def set_debug_message
  #   @debug_message = ErrorLog.find_by(id: params[:id])
  #   render json: { error: "Debug message not found" }, status: :not_found unless @debug_message
  # end
end
