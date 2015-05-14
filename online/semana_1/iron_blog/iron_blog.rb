class Post
attr_accesor :title, :date, :text
def initialize title, date, text
@title = title
@date =date
@text = text
end
end

class Blog
	attr_accessor :posts
	def initialize 
		@posts = []
	end
end

blog = Blog.new

post1 = Post.new( "Güebah", Time.now, "Es lo nuevo este año, en el pasado fue Zasca" )
post2 = Post.new( "Hello there, I'm using Ruby!", (Time.now) -1000, "Entroducing..." )
post3 = Post.new( "See you later", Time.now, "Alligator" )

blog.add_post post1
blog.add_post post2
blog.add_post post3

blog.show_front_page
