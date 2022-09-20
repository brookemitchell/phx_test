defmodule PhxTest.Blog.PostTest do
  use PhxTest.DataCase, async: true
  alias PhxTest.Blog.Post

  test "title msut be at least 2 chars long" do
    changeset = Post.changeset(%Post{}, %{title: "1", body: "Body"})
    assert %{title: ["should be at least 2 character(s)"]} = errors_on(changeset)
  end
end
