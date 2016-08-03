# An graph OpenReadController
class GraphsController < ProtectedController
  before_action :set_graph, only: [:show, :update, :destroy]
  skip_before_action :authenticate, only: [:index, :show]
  # everyone should be able to see graphs
  # only an owner should be able to create, update, and destroy

  # GET /graphs
  # GET /graphs.json
  def index
    @graphs = Graph.all

    render json: @graphs
  end

  # GET /graphs/1
  # GET /graphs/1.json
  def show
    render json: @graph
  end

  # POST /graphs
  # POST /graphs.json

  def create
    @graph = current_user.graphs.build(graph_params)

    if @graph.save
      render json: @graph, status: :created, location: @graph
    else
      render json: @graph.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graphs/1
  # PATCH/PUT /graphs/1.json
  def update
    @graph = Graph.find(params[:id])

    if @graph.update(graph_params)
      head :no_content
    else
      render json: @graph.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graphs/1
  # DELETE /graphs/1.json
  def destroy
    @graph.destroy

    head :no_content
  end


  private

  def graph_params
    params.require(:graph).permit(:graphJSON)
  end

  def set_graph
    @graph = Graph.find(params[:id])
  end
end
