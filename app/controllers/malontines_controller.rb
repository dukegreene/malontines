class MalontinesController < ApplicationController
  def index
    @malontines = Malontine.all
  end
end
