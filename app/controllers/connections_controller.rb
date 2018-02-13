class ConnectionsController < ApplicationController
  before_action :authenticate_user
  before_action :find_connection, only: [:edit, :update, :destroy]
  def index
    @connections = Connection.all.order(id: "DESC")
  end

  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new(connection_params)
    if @connection.save
      flash[:alert] = "Conexion creada"
      redirect_to connections_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @connection.update(connection_params)
      flash[:alert] = "Conexion Actualizada"
      redirect_to connections_path
    end
  end

  def destroy
    if @connection.destroy
      flash[:alert] = "Conexion Eliminada"
      redirect_to connections_path
    end
  end

  private
    def connection_params
      params.require(:connection).permit(:name, :name_db, :password_db, :host_db,)
    end

    def authenticate_user
      if current_user == nil
        redirect_to new_user_session_path
      end
    end

    def find_connection
      @connection = Connection.find(params[:id])
    end
end
