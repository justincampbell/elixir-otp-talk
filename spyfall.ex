defmodule Spyfall do
  defstruct players: [], spy: nil

  use GenServer

  def init(:ok) do
    {:ok, __struct__}
  end

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def handle_cast({:add_player, player}, state) do
    {:noreply, add_player(state, player)}
  end

  def handle_call(:game_state, _from, state) do
    {:reply, state, state}
  end

  def add_player(state, player) do
    %{state | players: [player|state.players] }
    |> randomize_spy
  end

  defp randomize_spy(state) do
    spy = state.players
          |> Enum.random
    %{state | spy: spy}
  end
end
