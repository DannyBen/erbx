require 'erb'
require 'erbx/version'

class ERBX
  class << self
    attr_reader :content

    def load(filename)
      new File.read filename
    end

    def new(content)
      erb_content = expose_erb_tags content
      ERB.new(erb_content, trim_mode: '%-')
    end

  private

    def expose_erb_tags(content)
      content
        .gsub("((", "<%-")
        .gsub("))", "-%>")
        .gsub("{{", "<%=")
        .gsub("}}", "%>")
    end
  end
end


