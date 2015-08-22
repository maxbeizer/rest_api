# RestApi
based off of: https://renatomoya.github.io/2015/05/09/Building-a-versioned-REST-API-with-Phoenix-Framework.html

To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.

## Post to the API
```
curl -H "Content-Type: application/json" -X POST -d '{"post": {"title":"foo","content":"bar"}}' http://localhost:4000/v1/posts
```
