blog_array=Array.new
puts "Lets make a blog post!"

# ?????? Why can't I get these variables to work in a method? ????????
# Prompt blogger for name, title, author, and content
puts "Blog post name?"
post_name=gets.downcase

puts "What is your post title?"
post_title=gets

puts "What is your author name?"
post_author=gets

puts "Write your blog post now!"
post_content=gets
puts "#{post_name}"
puts "#{post_author}"


# ************************ Classes for creating blog posts **********************
# Parent Blog class that will keep track of how many blog posts there are and what to do with them
class Blog

    @@total_posts = 1

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

post_name = Post.new
post_name.set_title= post_title
post_name.set_content= post_content
post_name.set_date= "#{Time.new}"
post_name.set_author= post_author
post_name_title = post_name.get_title
post_name_content = post_name.get_content
post_name_date = post_name.get_date
post_name_author = post_name.get_author

# variables collected
Blog.current_count
post_name
post_name_title
post_name_author
post_name_content
post_name_date

# get Post class info into array for each instance

post_name_array=[post_name_title, post_name_author, post_name_date, post_name_content]# puts "#{second}"

blog_array.push(post_name_array)

puts "#{blog_array}"

# Ask user for Y/N and save answer to post_again
if (Blog.current_count >= 1)
    puts "Do you want to create another blog post? Y/N"
    post_again=gets.downcase.chomp
    # Method to create a new blog based on post_again variable
    def bp_message(post_again)
        if (post_again[0] == "y")

            puts "Blog post name?"
            post_name=gets.downcase

            puts "What is your post title?"
            post_title=gets

            puts "What is your author name?"
            post_author=gets

            puts "Write your blog post now!"
            post_content=gets

            # get Post class info into array for each instance
            # post_name_array=[post_name_title, post_name_author, post_name_date, post_name_content]# puts "#{second}"

            # blog_array.push(post_name_array)
            else 
                puts "See you next time!"
        end
    end
    bp_message(post_again)
end
