module Jekyll
  class InfoBlockTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super
      @input = input
    end

    def render(context)
      input_split = split_params(@input)
      header = input_split[0].strip
      body = input_split[1].strip
      output = "<div class='premonition info'><div class='fa fa-check-square'></div><div class='content'><p class='header'>#{header}</p><p>#{body}</p></div></div>"
      return output
    end

    def split_params(params)
      params.split("|")
    end
  end

  class NoteBlockTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super
      @input = input
    end

    def render(context)
      input_split = split_params(@input)
      header = input_split[0].strip
      body = input_split[1].strip
      output = "<div class='premonition note'><div class='fa fa-check-square'></div><div class='content'><p class='header'>#{header}</p><p>#{body}</p></div></div>"
      return output
    end

    def split_params(params)
      params.split("|")
    end
  end

  class WarningBlockTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super
      @input = input
    end

    def render(context)
      input_split = split_params(@input)
      header = input_split[0].strip
      body = input_split[1].strip
      output = "<div class='premonition warning'><div class='fa fa-check-square'></div><div class='content'><p class='header'>#{header}</p><p>#{body}</p></div></div>"
      return output
    end

    def split_params(params)
      params.split("|")
    end
  end

  class ErrorBlockTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super
      @input = input
    end

    def render(context)
      input_split = split_params(@input)
      header = input_split[0].strip
      body = input_split[1].strip
      output = "<div class='premonition error'><div class='fa fa-check-square'></div><div class='content'><p class='header'>#{header}</p><p>#{body}</p></div></div>"
      return output
    end

    def split_params(params)
      params.split("|")
    end
  end
end

Liquid::Template.register_tag('infoBlock', Jekyll::InfoBlockTag)
Liquid::Template.register_tag('noteBlock', Jekyll::NoteBlockTag)
Liquid::Template.register_tag('warningBlock', Jekyll::WarningBlockTag)
Liquid::Template.register_tag('errorBlock', Jekyll::ErrorBlockTag)
