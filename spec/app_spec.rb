describe "app" do
  let(:book_data) do
    {"kind"=>"books#volume",
 "id"=>"jcUbTcr5XWwC",
 "etag"=>"xi298yf69/E",
 "selfLink"=>"https://www.googleapis.com/books/v1/volumes/jcUbTcr5XWwC",
 "volumeInfo"=>
  {"title"=>"The Ruby Programming Language",
   "subtitle"=>"Everything You Need to Know",
   "authors"=>["David Flanagan", "Yukihiro Matsumoto"],
   "publisher"=>"\"O'Reilly Media, Inc.\"",
   "publishedDate"=>"2008-01-25",
   "description"=>
    "The Ruby Programming Language is the authoritative guide to Ruby and provides comprehensive coverage of versions 1.8 and 1.9 of the language. It was written (and illustrated!) by an all-star team: David Flanagan, bestselling author of programming language \"bibles\" (including JavaScript: The Definitive Guide and Java in a Nutshell) and committer to the Ruby Subversion repository. Yukihiro \"Matz\" Matsumoto, creator, designer and lead developer of Ruby and author of Ruby in a Nutshell, which has been expanded and revised to become this book. why the lucky stiff, artist and Ruby programmer extraordinaire. This book begins with a quick-start tutorial to the language, and then explains the language in detail from the bottom up: from lexical and syntactic structure to datatypes to expressions and statements and on through methods, blocks, lambdas, closures, classes and modules. The book also includes a long and thorough introduction to the rich API of the Ruby platform, demonstrating -- with heavily-commented example code -- Ruby's facilities for text processing, numeric manipulation, collections, input/output, networking, and concurrency. An entire chapter is devoted to Ruby's metaprogramming capabilities. The Ruby Programming Language documents the Ruby language definitively but without the formality of a language specification. It is written for experienced programmers who are new to Ruby, and for current Ruby programmers who want to challenge their understanding and increase their mastery of the language.",
   "industryIdentifiers"=>
    [{"type"=>"ISBN_10", "identifier"=>"0596554656"},
     {"type"=>"ISBN_13", "identifier"=>"9780596554651"}],
   "readingModes"=>{"text"=>true, "image"=>true},
   "pageCount"=>448,
   "printType"=>"BOOK",
   "categories"=>["Computers"],
   "averageRating"=>4.5,
   "ratingsCount"=>11,
   "maturityRating"=>"NOT_MATURE",
   "allowAnonLogging"=>true,
   "contentVersion"=>"0.5.5.0.preview.3",
   "panelizationSummary"=>
    {"containsEpubBubbles"=>false, "containsImageBubbles"=>false},
   "imageLinks"=>
    {"smallThumbnail"=>
      "http://books.google.com/books/content?id=jcUbTcr5XWwC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail"=>
      "http://books.google.com/books/content?id=jcUbTcr5XWwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},
   "language"=>"en",
   "previewLink"=>
    "http://books.google.com/books?id=jcUbTcr5XWwC&printsec=frontcover&dq=ruby+programming&hl=&cd=1&source=gbs_api",
   "infoLink"=>"https://play.google.com/store/books/details?id=jcUbTcr5XWwC&source=gbs_api",
   "canonicalVolumeLink"=>"https://market.android.com/details?id=book-jcUbTcr5XWwC"},
 "saleInfo"=>
  {"country"=>"US",
   "saleability"=>"FOR_SALE",
   "isEbook"=>true,
   "listPrice"=>{"amount"=>31.99, "currencyCode"=>"USD"},
   "retailPrice"=>{"amount"=>17.27, "currencyCode"=>"USD"},
   "buyLink"=>
    "https://play.google.com/store/books/details?id=jcUbTcr5XWwC&rdid=book-jcUbTcr5XWwC&rdot=1&source=gbs_api",
   "offers"=>
    [{"finskyOfferType"=>1,
      "listPrice"=>{"amountInMicros"=>31990000.0, "currencyCode"=>"USD"},
      "retailPrice"=>{"amountInMicros"=>17270000.0, "currencyCode"=>"USD"},
      "giftable"=>true}]},
 "accessInfo"=>
  {"country"=>"US",
   "viewability"=>"PARTIAL",
   "embeddable"=>true,
   "publicDomain"=>false,
   "textToSpeechPermission"=>"ALLOWED",
   "epub"=>{"isAvailable"=>true},
   "pdf"=>{"isAvailable"=>true},
   "webReaderLink"=>
    "http://play.google.com/books/reader?id=jcUbTcr5XWwC&hl=&printsec=frontcover&source=gbs_api",
   "accessViewStatus"=>"SAMPLE",
   "quoteSharingAllowed"=>false},
 "searchInfo"=>
  {"textSnippet"=>
    "This book begins with a quick-start tutorial to the language, and then explains the language in detail from the bottom up: from lexical and syntactic structure to datatypes to expressions and statements and on through methods, blocks, ..."}}
  end


  describe "book_data" do
    it 'is a hash' do
      expect(book_data.class).to eq(Hash)
    end
  end

  describe 'title' do
    it 'returns the title of the book' do
      expect(title(book_data)).to eq("The Ruby Programming Language")
    end
  end

  describe 'authors' do
    it 'returns the names of the authors joined with a &' do
      expect(authors(book_data)).to eq("David Flanagan & Yukihiro Matsumoto")
    end
  end

  describe 'snippet' do
    it 'returns the first 100 chars of book description + ...' do
      expect(snippet(book_data)).to eq("The Ruby Programming Language is the authoritative guide to Ruby and provides comprehensive coverage ...")
    end
  end
end
