class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /jobs
  # GET /jobs.json
  def index
    if params["search"].nil? or params["search"]==""
      @jobs = Job.where(level: 0).includes(:videos).all
      @search = ""
    else
      @jobs = Job.includes(:videos).where("title LIKE ?", params["search"])
      @search = params["search"]
    end
  end

  def home_page
    if params["search"].nil? or params["search"]==""
      @jobs = Job.includes(:videos).all
      @search = ""
    else
      @jobs = Job.includes(:videos).where("title LIKE ?", params["search"])
      @search = params["search"]
    end
  end

  def admin
    if params["search"].nil? or params["search"]==""
      @jobs = Job.includes(:videos).all
      @search = ""
    else
      @jobs = Job.includes(:videos).where("title LIKE ?", params["search"])
      @search = params["search"]
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    if (!current_user.nil? && !current_user.watched(params[:id]))
      current_user.watched_jobs.create(job_id: params[:id])
      current_user.points += 100
      current_user.save
    end
    @subcategories = Job.find(params[:id]).jobs
  end

  # GET /jobs/new
  def new
    @job = Job.new
    if params["job_id"].nil?
      @job.level = 0
    else
      @category = Job.find(params["job_id"])
      @job.level = @category.level + 1
      @job.category = @category
    end
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job }
      else
        format.html { render action: 'new' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :description, :education, :level, :category, :category_id)
    end
end

