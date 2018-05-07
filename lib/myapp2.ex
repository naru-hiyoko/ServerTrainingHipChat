defmodule Myapp2 do
  @moduledoc """
  Documentation for Myapp2.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Myapp2.hello
      :world

  """
  def hello do
    :world
  end

  alias Hipchat.Httpc.Response
  alias Hipchat.V2.Rooms

  def main(_) do
    room_id = "4575451"
    access_token = load_token()
    client = Hipchat.ApiClient.new(access_token)
    msg = "test dayo"
    Rooms.send_message(client, room_id, %{message: msg})
  end

  def load_token() do
    Path.expand("/private/tmp/myapp2/hipchat_credidental")
    |> File.read!()
    |> String.trim()
  end

  
end
