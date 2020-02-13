class MalontinesController < ApplicationController
  include SessionsHelper
  before_action :authorize!, except: [:index, :show]
  before_action :find_malontine, only: [:show, :destroy, :edit]
  before_action :get_malones_and_notes, only: [:new, :edit]

  def index
    @malontines = Malontine.reverse_chrono_paginated(params[:page])
  end

  def new
    @malontine = Malontine.new
  end

  def create
    malontine = Malontine.new(malontine_params.merge({creator: current_user}))
    malontine.love_note_message = params[:malontine][:love_note_message]

    if malontine.save
      redirect_to malontines_path
    else
      flash[:errors] = malontine.errors.full_messages
      redirect_to new_malontine_path
    end
  end

  def show

  end

  def edit
    @malones = Malone.all
  end

  def destroy
    @malontine.destroy
    redirect_to malontines_path
  end

  private

  def find_malontine
    @malontine = Malontine.find(params[:id])
  end

  def get_malones_and_notes
    @malones = Malone.all
    # Add blank love note at beginning for a user to select an empty one
    @love_notes = LoveNote.order(:message).to_a.unshift(LoveNote.new)
  end

  def malontine_params
    # Strong params for Malontine
    params.require(:malontine).permit(:love_note_id, :malone_id, :title)
  end
end
