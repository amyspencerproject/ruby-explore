# blog post class that defines title, author, date, content of post

class Post
    # create array to put posts in
    @@blog_array = []

    # not sure exactly what self.all does but hopefully gets post info into blog_array
    # maybe this is the in
    def self.all
        @@blog_array
    end
    
    def self.create
        post = new
        puts "What is your post title?"
        post_title=gets

        puts "What is your author name?"
        post_author=gets

        puts "Write your blog post now!"
        post_content=gets
    end
end 

Post.create



# # @@total_posts = 0

#     # def initialize
#     #     @@total_posts += 1
#     # end

#     @@all_blog_posts = []

#     def self.all
#         @@all_blog_posts
#     end

#     # def initialize(post)
#     #     @post = post
#     # end

# def self.create
#     post = new
#     puts "What is your post title?"
#     post_title=gets

#     puts "What is your author name?"
#     post_author=gets

#     puts "Write your blog post now!"
#     post_content=gets
# end


