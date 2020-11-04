class Author

    attr_accessor :name

    @@all = []

    def initialize(name=nil)
        @name = name
        @@all << self
    end

    def add_post(post)
        
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def posts
       Post.all.select {|post| post.author == self}
    end

    def self.all
        @@all
    end

    def self.post_count
        post_count = 0
        Author.all.each do |author|
            post_count += author.posts.count
        end
        post_count
    end

end