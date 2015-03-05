#currently incomplete: hash?

class Blog
    
    attr_accessor :title, :all_blog_posts, :total_blog_posts
    
    def initialize
        time = Time
        @time = time.now
        puts "Title of Blog:"
        @title = gets.chomp
        @all_blog_posts = Hash.new
        @total_blog_posts = 0
    end
    
    def create_blogpost
        new_blog_post = Blog_post.new
        puts "New blog post"
        @all_blog_posts << new_blog_post
        @total_blog_posts +=1
    end
    
    def collect_posts
        return @all_blog_posts
    end
    
    def asc_order (blog_post)
        asc_dates = blog_post.keys.sort
        return asc_dates
    end
    
    def desc_order (blog_post)
        des_dates = blog_post.asc_order.reverse
        return des_dates
    end
    
    def publish (all_blog_posts)
        all_blog_posts.each do |blog_post|
            puts blog_post.time_created
            puts blog_post.title
            puts blog_post.author
            puts blog_post.content
        end
    end
        
            
end

class Blog_post
    
    attr_accessor :title, :time_created, :content, :author
    
    def initialize
        @time_created = Time.now
        puts "Title of blog post:"
        @title = gets.chomp
        
        puts "Blog post content:"
        @content = gets.chomp
        
        puts "Written by:"
        @content = gets.chomp
    end
    
    def modify_content
        puts "New post title:"
        @title = gets.chomp
        
        puts "New blog post content:"
        @content = gets.chomp
        
        puts "Written by:"    
        @author = gets.chomp
    end
    
    def save_post
        
    end
end
    
    
    
    