module Jekyll
  class List
    attr_reader :title
    attr_reader :timestamp
    attr_reader :permalink
    attr_reader :author

    def initialize(post,context)
      @title = post.data['title']
      # TODO: Add timestamp functionality
      @permalink = post.data['permalink']
      @author = Person.new(post.data['author'],context)

      puts post.categories
      # TODO: Categories
    end
  end
end