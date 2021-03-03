defmodule Issue137Web.PageController do
  use Issue137Web, :controller
  alias Issue137.{LineOrder, Order}

  def index(conn, _params) do
    order = Order.changeset(%Order{number: 123, line_orders: [%LineOrder{product: "tool", quantity: 3}]}, %{})
    render(conn, "index.html", order: order)
  end
end
