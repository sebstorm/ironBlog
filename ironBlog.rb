class Blog
	
	def initialize
		@blog_array = []
	end

	def create_front_page(post)
		@blog_array.push(post)   #add
	end

	def publish_front_page
		   @blog_array.each do |post|
		   post.display_post
		   end             #show
	end
end



class Post < Blog
	attr_accessor :title, :date, :text

	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def display_post
		puts "#{@title}"
		puts "#{@date}"
		puts "*************"
		puts "@text"
		puts "-------------"

	end
end


post1 = Post.new("First Blog", "06/15/15", "Blah Blah Blah")

post2 = Post.new("Coding is not easy", "06/15/15", "Blah Blah Blah")

post3 = Post.new("Maybe I will get this", "06/15/15", "Blah Blah Blah")

blog_array = Blog.new

blog_array.create_front_page(post1)

blog_array.publish_front_page
