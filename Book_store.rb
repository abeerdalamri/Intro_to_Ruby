# Book store
class StoreItem
    @@allItems = Array.new
    attr_accessor :title, :price
    def initialize(tit, pri)
        @title = tit
        @price = pri
    end
    
    
    def print(object)
      puts object.inspect
     end
     
    def self.printList
        puts @@allItems.inspect
    end

# loop do
#   v=v+1
#   if not arr[v] == nil
#     if arr[v].even?
#       puts arr[v].to_s + " Even"
#     else
#       puts arr[v].to_s + " Odd"
#     end
#   end
#   if(v>=arr.length);break end
# end
    def self.deleteItem(delIt)
      @title = delIt
      bool = false
      i=0
      while i < @@allItems.length
        if @@allItems[i][0].include?(delIt) 
          @@allItems.delete_at(i)
          bool = true
        end
        i+=1
      end
      if bool == false
        puts "not found"
      end

    end

    # def self.addItem
    #   @@allItems.push(@@item)
    # end  
    
    def self.range(from , to)
      i = 0
      while i < @@allItems.length
        if @@allItems[i][1] >= from && @@allItems[i][1] <= to
            puts @@allItems[i]
        end
        
      i= i+1
      end
    end

    def self.expensive()
      i = 0
      qq = 0
      while i < @@allItems.length
        #comp = @@allItems[i][1]
        if @@allItems[i][1].max < qq
            qq = @@allItems[i][1]
        end
      i= i+1 
      puts @@allItems[i]
      end
     

      
  end
end 



class Book < StoreItem
    attr_accessor :auth ,:pages, :isbn
    def initialize(tit = " ", pri = 0,aut = " ",pag = 0 ,isb = 0)
        super(tit, pri)
        @auth = aut
        @pages = pag
        @isbn = isb
        ##@@item.push(@title, @price, @auth, @pages, @isbn)
    end
    
    
    ##@@allItems.push(@@item)

    def self.pushBook(tit,pri,aut,pag,isb)
      bookArray = Array.new
        @title = tit
        @price = pri
        @auth = aut
        @pages = pag
        @isbn = isb
      bookArray.push(@title, @price, @auth, @pages, @isbn) 
      @@allItems.push(bookArray)
    end
        
end

class Magazine < StoreItem
    attr_accessor :publisher, :date
    def initialize(tit = " ", pri=0, publ = " ",dat = 0000)
        super(tit, pri)
        @publisher = publ
        @date = dat
    end

    def self.pushMagazine(tit,pri,pub,dat)
      magArray = Array.new
        @title = tit
        @price = pri
        @publisher = pub
        @date = dat
      magArray.push(@title, @price, @publisher, @date) 
      @@allItems.push(magArray)
    end



end


#Add Item (Book or Magazine)

    # puts "chose item to add B for a book, M for a magazine"
    # kindOfitem = gets.chomp
    # if kindOfitem == "B"
    #     book =Book.new()
    #     puts "Enter book information: Title - Price - Author - Pages - isbn "
    #     book.title = gets.chomp
    #     book.price = gets.chomp.to_i
    #     book.auth = gets.chomp
    #     book.pages = gets.chomp.to_i
    #     book.isbn = gets.chomp.to_i
    #     Book.pushBook(book.title,book.price,book.auth,book.pages,book.isbn)

    # elsif kindOfitem =="M"
    #     mag =Magazine.new()
    #     puts "Enter Magazine information: Title - Price - Publisher - Date "

    #     mag.title = gets.chomp
    #     mag.price = gets.chomp.to_i
    #     mag.publisher =gets.chomp
    #     mag.date = gets.chomp.to_i
        
    #     Magazine.pushMagazine(mag.title,mag.price,mag.publisher,mag.date)
      
    # end



# Objects data

book1 = Book.pushBook("Ruby Cookbookce",67,"Lucas Carlsoages",400,9780596523695)

book2 = Book.pushBook("Ruby programming",90,"Jerry Lee",200,1730497513499)

book3 = Book.pushBook("Ruby datatypes",30,"Tom jack",150,5478913465295)

book4 = Book.pushBook("Ruby Class",10,"Chan Lee",240,1264398743530)


magazine1= Magazine.pushMagazine("Software Magazine",13,"IEEE",2022)

magazine2= Magazine.pushMagazine("Communications of the ACM",80,"ACM",2021) 

magazine3= Magazine.pushMagazine("eLearn",50,"ACM",2021)

magazine2= Magazine.pushMagazine("COVID-19",100,"IEEE",2022) 




## list expensive items
rg= StoreItem.expensive()
puts rg 


## books within range
# puts "Enter the lower price"
# x = gets.chomp.to_i
# puts "Enter the higher price"
# y = gets.chomp.to_i
# StoreItem.range(x,y)


## search mag by date

## search mag by publisher

## list all items
#print(StoreItem.printList)

## delete an item by title

# puts "Enter the title you want to delete"
# de1 = gets.chomp

# StoreItem.deleteItem(de1)

# print(StoreItem.printList)


