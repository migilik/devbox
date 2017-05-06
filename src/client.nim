import dom

proc testbtnclick(e: Event) =
  alert("Hello world")

proc domready(e: Event) =
  getElementById(document, "testbtn").addEventListener("click", testbtnclick)


document.addEventListener("DOMContentLoaded", domready)
