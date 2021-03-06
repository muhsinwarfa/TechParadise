class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy,:apply]
  skip_before_action :authenticate, only: [:index,:show,:newest_first, :oldest_first, :names_descending, :names_ascending,:only_platform, :help_needed]
  
  # GET /ideas
  # GET /ideas.json
  def index
    @ideas = Idea.all
  end
  
  def apply
      @idea.role.toggle(:filled)
      @idea.update(:user_id => current_user.id)
      if @idea.save
         redirect_to idea_path, notice: 'Role was successfully updated.' 
      else
         flash[:alert]= 'Error Updating role'
         redirect_to idea_path
      end
  end


   def newest_first
     @ideas = Idea.newest_first
   end

   def oldest_first
      @ideas= Idea.oldest_first
   end

   def names_descending
      @ideas = Idea.names_descending
   end

   def names_ascending
      @ideas = Idea.names_ascending
   end

   def only_platform
     @ideas = Idea.joins(:platform).select(:idea_name,:platform_name,:id)
   end


  def help_needed
     @ideas = Idea.joins(:role).select(:idea_name,:skill_name,:id)
  end
  
  
    
    

  

  # GET /ideas/1
  # GET /ideas/1.json
  def show
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end

  # GET /ideas/1/edit
  def edit
    
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'Idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = Idea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_params
      params.require(:idea).permit(:idea_name , :idea_description , :additional_info , :platform_id, :role_id , :user_id)
    end
    
    
    
    
    
    
    
end