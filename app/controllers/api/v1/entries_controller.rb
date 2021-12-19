module Api
  module V1
    class EntriesController < ApplicationController
      def index
        # entries = Entry.all.order('date DESC')
        # render json: { check: "amazing"}
        render json: EntrySerializer.new(entries).serializable_hash.to_json
      end

      def show
        @entry = Entry.find(params[:id])
        @new_task = Task.new(:entry=>@entry)
      end

      # Don't have to pass params here? not sure why, bc some fields
      # Are required
      def new
        @entry = Entry.new
      end

      def create
        @entry = Entry.new(entry_params)

        if @entry.save
          redirect_to entries_path
        else
          render :new
        end
      end

      def edit
        @entry = Entry.find(params[:id])
      end

      def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy
        redirect_to entries_path
      end

      def update
        @entry = Entry.find(params[:id])
        if @entry.update(entry_params)
          redirect_to entries_path
        else
          render :edit
        end
      end

      private

      def entry_params
        params.require(:entry).permit(:author, :date, :body)
      end
    end
  end
end