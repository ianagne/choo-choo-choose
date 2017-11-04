defmodule ChooChooChooseWeb.ChooseController do
  use ChooChooChooseWeb, :controller
  alias ChooChooChoose.Train
  alias ChooChooChoose.Repo

  def show(conn,_) do
    train = Repo.all(Train) |>
      Enum.random

    render conn, "show.html", train: train
  end
end

