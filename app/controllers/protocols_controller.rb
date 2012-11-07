# encoding: utf-8

class ProtocolsController < ApplicationController
  def index
    @protocols = Protocol.where("name like '%#{params[:search][:name] rescue nil}%'")
    @protocols = @protocols.where("layer_id = '#{params[:search][:layer]}'") if params[:search].present? and params[:search][:layer].present?
    respond_to do |format|
      format.html
      format.json { render json: @protocols }
    end
  end

  def show
    @protocol = Protocol.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @protocol }
    end
  end

  def new
    @protocol = Protocol.new

    respond_to do |format|
      format.html 
      format.json { render json: @protocol }
    end
  end

  def edit
    @protocol = Protocol.find(params[:id])
  end

  def create
    @protocol = Protocol.new(params[:protocol])

    respond_to do |format|
      if @protocol.save
        format.html { redirect_to @protocol, notice: 'Protocolo criado com sucesso' }
        format.json { render json: @protocol, status: :created, location: @protocol }
      else
        format.html { render action: "new" }
        format.json { render json: @protocol.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @protocol = Protocol.find(params[:id])

    respond_to do |format|
      if @protocol.update_attributes(params[:protocol])
        format.html { redirect_to @protocol, notice: 'Protocolo atualizado com ' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @protocol.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @protocol = Protocol.find(params[:id])
    @protocol.destroy

    respond_to do |format|
      format.html { redirect_to protocols_url }
      format.json { head :no_content }
    end
  end
end
