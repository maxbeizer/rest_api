defmodule RestApi.ContactView do
  use RestApi.Web, :view

  def render("index.json", %{contacts: contacts}) do
    contacts
  end
end
