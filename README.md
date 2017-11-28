# Raxx.ApiBlueprint

**[Raxx](https://github.com/crowdhailer/raxx) middleware for routing requests based on an [API Blueprint](https://apiblueprint.org/).**

[![Hex pm](http://img.shields.io/hexpm/v/raxx_api_blueprint.svg?style=flat)](https://hex.pm/packages/raxx_api_blueprint)
[![Build Status](https://secure.travis-ci.org/CrowdHailer/raxx_api_blueprint.svg?branch=master
"Build Status")](https://travis-ci.org/CrowdHailer/raxx_api_blueprint)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

- [Install from hex.pm](https://hex.pm/packages/raxx_api_blueprint)
- [Documentation available on hexdoc](https://hexdocs.pm/raxx_api_blueprint)
- [Raxx discussion on slack](https://elixir-lang.slack.com/messages/C56H3TBH8/)

## Getting started

Define a blueprint for your application.

```md
FORMAT: 1A

# Messages [/messages]
## Create a message [POST]
```
*lib/my_app/www.apib*

Use the `Raxx.ApiBlueprint` in a `Raxx.Server` module.

```elixir
defmodule MyApp.WWW do
  use Raxx.Server
  use Raxx.ApiBlueprint, "./www.apib"
end
```
*lib/my_app/www.ex*

Add controller modules for each action in the blueprint.
Controller modules are just another `Raxx.Server`

```elixir
defmodule MyApp.WWW.CreateAMessage do
  use Raxx.Server

  @impl Raxx.Server
  def handle_request(request, state) do
  # ...
end
```
*lib/my_app/www/create_a_message.ex*
