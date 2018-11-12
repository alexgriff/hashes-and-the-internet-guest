## Where we came from: Hashketball
- reflect on progress thus far. Learned so much since this material.
- reflect on how the format of this data allowed for easy manipulation. Ask questions of data. What if it was a big String (boooo!)
- reflect on limitations; static data

## Where we're headed: The Internet
- What does browser make to server (a server is just some other computer listening for requests)?
- what does server respond with?
- REQUEST RESPONSE CYCLE
- different request, different response.
  - change query params in google req from dog -> cat
- Dev tools
  - Google maps, we see more data populate page. How does it get there?
  - Google docs, we know persistence happens, so what else do we know from that?
- JSON
  - trello, append .json to url... know we're back to Hasketball!

## APIs
- Can we tell trello, somehow with code & not through the UI:
  - give me the text of the card with this id
  - give me all the cards on this list
  - create a new card
- That's an API
  - make web request -> server does something depending on request -> sends response
- additionally, API is a more generic (more powerful) term
  - what does this idea of 'send certain message -> depending on message do some behavior' remind you of?
  - OO! Ruby classes etc. have an API. The interface through which we interact with a thing. If it's not in the interface we can't do it: "Undefined method 'meow' for dog Dog Class"

## Google Books CLI
Using ruby we should be able to:
- take some user input
- make a request to Google Books API
- turn the response into a format Ruby
- get specific data about a book
  - title
  - author
  - first 140 chars of description
- print that to the console
