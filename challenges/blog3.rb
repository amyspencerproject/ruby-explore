# creat a class that will keep track of data and push it to array
class Blog
    # create array that post can be saved to and which can be "published" at the end
    @@blog_array = []

    def self.all
        @@blog_array # this is a class variable
    end

    def self.add(item)
        # adds each post now called item to the array
        @@blog_array << item
    end

    def self.publish
        @@blog_array.each do |post|
            puts "#{post.title} "
        end
    end

    # create a class that has all variables/data necessary for a blog post
    class Post < Blog

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
            post.save

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

        def save
            # clever way to push data to an array
            Post.add(self)
        end    
    end
end

Post.create
Post.publish

    # puts "#{Post.post.title}"
    # puts "#{Post.post.content}"
    # puts "Written by: #{Post.post.author}"
    # puts "Publish Date:\n #{Post.post.created_at}"

        # puts "#{post.title}"
        # puts "#{post.content}"
        # puts "Written by: #{post.author}"
        # puts "Publish Date:\n #{post.created_at}"

