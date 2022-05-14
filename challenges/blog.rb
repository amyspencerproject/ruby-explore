# Parent Blog class that will keep track of how many blog posts there are and what to do with them
class Blog

    @@total_posts = 0

    def initialize
        @@total_posts += 1
    end

    def self.current_count
        # puts "There are currently #{@@total_posts} instances in the blog"
        return @@total_posts
    end

    def set_date= (post_date)
        @date = post_date
    end

    def get_date
        return @date
    end
end

# Class to start a new blog post
class Post < Blog

    def set_title= (post_title)
        @title = post_title
    end

    def get_title
        return @title
    end

    def set_content= (post_content)
        @content = post_content
    end

    def get_content
        return @content
    end

    def set_author= (post_author)
        @author = post_author
    end

    def get_author
        return @author
    end
end

# Prompt blogger for name, title, author, and content
puts "Blog post name?"
post_name=gets.downcase

puts "What is your post title?"
post_title=gets

puts "What is your author name?"
post_author=gets

puts "Write your blog post now!"
post_content=gets

# Create a new blog post using cases (this is an instance)
post_name = Post.new
post_name.set_title= post_title
post_name.set_content= post_content
post_name.set_date= "#{Time.new}"
post_name.set_author= post_author
post_name_title = post_name.get_title
post_name_content = post_name.get_content
post_name_date = post_name.get_date
post_name_author = post_name.get_author



# puts "#{}"

Blog.current_count
post_name
post_name_title
post_name_author
post_name_content

# Ask user for Y/N and save answer to post_again
# if (Blog.current_count > 1)
#     puts "Do you want to create another blog post? Y/N"
#     post_again=gets.downcase.chomp
# end

# Method to create a new blog based on post_again variable
# def bp_message(post_again)
#     if (post_again[0] == "y")
#         return Post.new
#         else 
#             puts "See you next time!"
#     end
# end
# bp_message(post_again)

# get Post class info into array for each instance
# not sure if I can get instance name, ie first, second to automatically be a variable out sided the class
# an interation counter inside the class could give an individual number to each blog post but can start variables with numbers
# but maybe a number could be used for a hash index???

# first=[first_title, first_author, first_date, first_content]
# second=[second_title, second_author, second_date, second_content]
# puts "#{second}"

# blog_array = [first]
# blog_array.push(second)
# puts "#{blog_array}"

# Inspects
# puts first.inspect
# puts second.inspect
