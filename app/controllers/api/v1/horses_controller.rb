module Api
  module V1
    class HorsesController < ApplicationController
      before_action :set_horse, only: [:show, :update, :destroy, :random_choose]

      def index
        horses = Horse.order(power: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: horses }
      end

      def show
        render json: { status: 'SUCCESS', message: 'Loaded the post', data: @horse }
      end

      


      def random_choose
        @horse = Horse.order("RAND()").limit(8)
        render json: { data: horses }
      end


      

      private

      def set_horse
        @horse = Horse.find(params[:id])
      end

      
    end
  end
end