module Api
  module V1
    class HorsesController < ApplicationController
      before_action :set_horse, only: [:show, :update, :destroy]

      def index
        horses = Horse.order(power: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: horses }
      end

      def show
        render json: { status: 'SUCCESS', message: 'Loaded the post', data: @horse }
      end

      def create
        horse = Horse.new(post_params)
        if horse.save
          render json: { status: 'SUCCESS', data: horse }
        else
          render json: { status: 'ERROR', data: horse.errors }
        end
      end

      def destroy
        @horse.destroy
        render json: { status: 'SUCCESS', message: 'Deleted the post', data: @horse }
      end

      def update
        if @horse.update(horse_params)
          render json: { status: 'SUCCESS', message: 'Updated the post', data: @horse }
        else
          render json: { status: 'SUCCESS', message: 'Not updated', data: @horse.errors }
        end
      end

      private

      def set_horse
        @horse = Horse.find(params[:id])
      end

      
    end
  end
end