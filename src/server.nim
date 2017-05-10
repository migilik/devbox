import jester, asyncdispatch, htmlgen, json

routes:
  get "/":
    resp h1("Hello world!")

  post "/addtask":
    try:
      let parsed = parseJson(request.body)
      resp "Got json " & $parsed
    except:
      resp Http400, "Unable to process request"

  get "/tasks":
    resp "Tasks go here"

runForever()
