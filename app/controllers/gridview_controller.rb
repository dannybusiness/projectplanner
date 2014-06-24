class GridviewController < ApplicationController
  def show
  	@projects = Project.all
  end
end
