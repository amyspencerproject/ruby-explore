# Class to start a new blog post
class Post
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

    def set_date= (post_date)
        @date = post_date
    end

    def get_date
        return @date
    end

    def set_author= (post_author)
        @author = post_author
    end

    def get_author
        return @author
    end
end

# First blog post
first = Post.new
first.set_title= "Obligatory Hello World"
first.set_content= "Hello Big Beautiful World!  This is a very wee blog post. Now it is over."
first.set_date= "#{Time.new}"
first.set_author= "Jeeves"
first_title = first.get_title
first_content = first.get_content
first_date = first.get_date
first_author = first.get_author

# Second blog post
second = Post.new
second.set_title= "Why I am writing a blog???"
second.set_content= "Doing this for myself and not for your approval. So piss off already!"
second.set_date= "#{Time.new}"
second.set_author= "Ginny"
second_title = second.get_title
second_content = second.get_content
second_date = second.get_date
second_author = second.get_author


# get Post class info into array for each instance
# not sure if I can get instance name, ie first, second to automatically be a variable out sided the class
# an interation counter inside the class could give an individual number to each blog post but can start variables with numbers
# but maybe a number could be used for a hash index???

first=[first_title, first_author, first_date, first_content]
second=[second_title, second_author, second_date, second_content]
# puts "#{second}"

blog_array = [first]
blog_array.push(second)
puts "#{blog_array}"

# Inspects
# puts first.inspect
# puts second.inspect

# Ask user for Y/N and save answer to post_again
# puts "Do you want to create another blog post? Y/N"
# post_again=gets.downcase.chomp

# Method to create a new blog based on post_again variable
# def bp_message(post_again)
#     if (post_again[0] == "y")
#         return Post.new
#         else 
#             puts "See you next time!"
#     end
# end
# bp_message(post_again)
