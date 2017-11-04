defmodule ChooChooChooseWeb.HomeControllerTest do
  use ChooChooChooseWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Choo Choo Choose"
  end
end
