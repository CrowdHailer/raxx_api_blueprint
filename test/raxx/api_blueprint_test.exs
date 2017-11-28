defmodule Raxx.ApiBlueprintTest.Root do
  use Raxx.Server

  @impl Raxx.Server
  def handle_request(_, _), do: {[], :state}
end
defmodule Raxx.ApiBlueprintTest.AlternativeMethod do
  use Raxx.Server

  @impl Raxx.Server
  def handle_request(_, _), do: {[], :state}
end
defmodule Raxx.ApiBlueprintTest.GetAStaticResource do
  use Raxx.Server

  @impl Raxx.Server
  def handle_request(_, _), do: {[], :state}
end
defmodule Raxx.ApiBlueprintTest.GetAParameterizedResource do
  use Raxx.Server

  @impl Raxx.Server
  def handle_request(_, _), do: {[], :state}
end
defmodule Raxx.ApiBlueprintTest do
  use ExUnit.Case

  use Raxx.Server
  use Raxx.ApiBlueprint, "./api_blueprint_test.apib"


  test "get root" do
    request = Raxx.request(:GET, "/")
    assert {[], {Raxx.ApiBlueprintTest.Root, :state}} ==  __MODULE__.handle_head(request, [])
  end

  test "request with alternative method" do
    request = Raxx.request(:POST, "/")
    assert {[], {Raxx.ApiBlueprintTest.AlternativeMethod, :state}} ==  __MODULE__.handle_head(request, [])
  end

  test "get a static resource" do
    request = Raxx.request(:GET, "/resources")
    assert {[], {Raxx.ApiBlueprintTest.GetAStaticResource, :state}} ==  __MODULE__.handle_head(request, [])
  end

  test "get a parameterized resource" do
    request = Raxx.request(:GET, "/resources/1234")
    assert {[], {Raxx.ApiBlueprintTest.GetAParameterizedResource, :state}} ==  __MODULE__.handle_head(request, [])
  end
end
