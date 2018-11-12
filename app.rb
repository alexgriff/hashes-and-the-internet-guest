require "rest-client"
require "json"
require "pry"


def title(book_data)
  book_data["volumeInfo"]["title"]
end

def authors(book_data)
  author_names = book_data["volumeInfo"]["authors"]
  if (author_names)
   author_names.join(" & ")
  else
    "Unknown"
  end
end

def snippet(book_data)
  desc = book_data["volumeInfo"]["description"]
  if(desc)
    "#{desc[0..100]}..."
  else
    "No description for this book"
  end
end

def print_book(book_data)
  puts("Title: #{title(book_data)}")
  puts("Author(s): #{authors(book_data)}")
  puts("Snippet: #{snippet(book_data)}")
  puts "*" * 100
end




class CLI
  def start
    welcome
    puts "Enter a subject to find books about:"
    query = gets.chomp

    url = "https://www.googleapis.com/books/v1/volumes?q=#{query}"

    response = RestClient.get(url)
    body = response.body
    data = JSON.parse(body)

    books = data["items"]

    books.each do |book_data|
      print_book(book_data)
    end

  end

  def welcome
    puts "Welcome to the BookFinder App"
  end
end

CLI.new.start
