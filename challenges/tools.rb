# my_array = [
#     "A",
#     "B",
#     "C",
#     "D"
# ]

# # #puts my_array

# # array_1 = ["a", "b", "c"]
# # array_2 = ["d", "e"]
# # array_1.concat(array_2)

# # #puts array_1
# # #puts array_2

# # letter="W"
# # #my_array.concat(letter)
# # my_array.push(letter)
# # puts my_array

# # Hashes
# my_hash = {"colors" => ["red", "green"], "size" => ["large", "small"]}
# puts my_hash.inspect
# # puts my_hash.fetch("colors")

# my_hash2 = {"cibo"=>["formaggio", "mele", "chips"], "beve"=>["aqua spina", "succo", "latte"]}

# # my_hash.merge(my_hash2)
# my_hash["weight"]=["heavy", "light"]
# puts my_hash.inspect

# class Post
#     def initialize(post)
#         @@post = post
#     end

#     def self.create
#         puts "What is your post title?"
#         post_title=gets

#         puts "What is your author name?"
#         post_author=gets

#         puts "Write your blog post now!"
#         post_content=gets   
        
#         test = create.post_title
#         # return test
#     end
#     # return test
#     puts "#{test}"
    
#     # puts "#{post_title}"

#     # def title
#     #     @title
#     # end
     
#     # def title=(title) # a setter method always takes an argument
#     #     @title = title # don't forget to set the instance variable
#     # end

#     # puts "#{title}"
    
# end  


# # puts "#{post_title}"
# # puts "#{Post.create.title}"
# # puts "#{Post.create}"
# puts "#{test}"


# # def Bug 
# #     def self.current_count
# #         # puts "There are currently #{@@total_posts} instances in the blog"
# #         return @@total_posts
# #     end
# # end

# # Bug.current_count

# class Greeter
#     def initialize(name)
#       @name = name
#     end
  
#     def say_hello
#       "Hello #{@name}"
#     end
#   end
  
#   greeting = Greeter.new("Amy")
#   puts greeting.say_hello
#   puts greeting.inspect

class Post 

  def self.create
      # ask for user input
      post = new
      puts "What is your post title?"
      post.title=gets.chomp

      puts "What is your author name?"
      post.author=gets.chomp

      puts "Write your blog post now!"
      post.content=gets.chomp

      post.created_at=Time.now

      # clever way to push the data array
      # post.save

      # ask user for another post
      puts "Do you want to create another blog post? Y/N"
      post_again=gets.downcase.chomp

      if (post_again == "y" )
          create
      else 
          puts puts "See you next time!"
      end
  end
      

  def title
      @title
  end
  
  def title=(title) # these are setter methods and always takes an argument
      @title = title # don't forget to set the instance variable
  end

  def author
      @author 
  end

  def author=(author)
      @author = author
  end
  
  def created_at
      @created_at
  end
  
  def created_at=(created_at)
      @created_at = created_at
  end
  
  def content
      @content
  end
  
  def content=(content)
      @content = content
  end

  # def save
  #     # clever way to push data to an array
  #     Post.add(self)
  # end    
end

Post.create