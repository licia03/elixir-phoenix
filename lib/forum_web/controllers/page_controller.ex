defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{name: "Licia", email: "licia@gmail.com"},
      %{name: "Jessica", email: "jessica@gmail.com"}
    ]

    json(conn, %{users: users})
  end
end
