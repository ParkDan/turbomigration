class FormsController < ApplicationController

  def index
    @forms = Form.all
  end

  def show
    @form = Form.find_by_id(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new
    @form.source = params[:source]
    @form.name = params[:name]
    @form.process_id = params[:process_id]
    
    if @form.save
            redirect_to forms_url
          else
      render 'new'
    end
  end

  def edit
    @form = Form.find_by_id(params[:id])
  end

  def update
    @form = Form.find_by_id(params[:id])
    @form.source = params[:source]
    @form.name = params[:name]
    @form.process_id = params[:process_id]
    
    if @form.save
            redirect_to forms_url
          else
      render 'edit'
    end
  end

  def destroy
    @form = Form.find_by_id(params[:id])
    @form.destroy
        redirect_to forms_url
      end
end
