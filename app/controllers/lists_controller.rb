class ListsController < ApplicationController
  def home
    @lists = List.all
  end
end
