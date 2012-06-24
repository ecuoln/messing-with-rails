class StoryController < ApplicationController
  
  def index
    @current_time = Time.now  
    @story = Story.find(1)
  end
  
  def new
  end
  
  def create
  @story = params[:story]
    if @story.save
      redirect_to @story, notice: "Story created"
    else
      render action: "new"
    end
  end

end
