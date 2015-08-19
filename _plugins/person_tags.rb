module Jekyll
  class PersonFullNameTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      puts "BOOM"
      @id = text.strip
      super
    end

    def render(context)
      if @id
        puts @id
        person = Person.new(@id, context)

        if person
          result = person.full_name
        else
          result = "ERROR: There is no person associated with the specified id '#{@id}'."
        end
      else
        result = "ERROR: An id was not included for this person."
      end

      result
    end
  end
end

Liquid::Template.register_tag('person_full_name', Jekyll::PersonFullNameTag)
