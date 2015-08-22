defmodule RestApi.ContactControllerTest do
  use ExUnit.Case, async: false
  use Plug.Test
  alias RestApi.Contact
  alias RestApi.Repo
  alias Ecto.Adapters.SQL

  setup do
    SQL.begin_test_transaction(Repo)

    on_exit fn ->
      SQL.rollback_test_transaction(Repo)
    end
  end

  test "/index returns a list of contacts" do
    contacts_as_json =
      %Contact{name: "Gumbo", phone: "(615)123-1234"}
      |> Repo.insert
      |> List.wrap
      |> Poison.enncode!

    response = conn(:get, "/api/contacts") |> send_request

    assert response.status == 200
    assert response.resp_body == contacts_as_json
  end

  defp send_request(conn) do
    conn
    |> put_private(:plug_skip_csrf_protection, true)
    |> RestApi.Endpoint.call([])
  end
end
