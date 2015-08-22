defmodule RestApi.ContactController do
  use RestApi.Web, :controller
  alias RestApi.Repo
  alias RestApi.Contact

  plug :action

  def index(conn, _params) do
    contacts = Repo.all(Contact)
    render conn, contacts: contacts
  end
end
