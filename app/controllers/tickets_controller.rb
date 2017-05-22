class TicketsController < ApplicationController
  before_action :authenticate_operator!, only: [:new,:edit]


  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
  end

  private
  def ticket_params
    params.require(:ticket).permit(:name, :description, :operator_id, :owner, :status)
  end
end
