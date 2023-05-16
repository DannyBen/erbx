require 'erb'

class ERBX
  class << self
    def load(filename, options = {})
      new File.read(filename), options
    end

    def new(content, options = {})
      erb_content = expose_erb_tags content, options
      ERB.new erb_content, trim_mode: '%-'
    end

  private

    def expose_erb_tags(content, options = {})
      code_open = options[:code_open] || '(('
      code_close = options[:code_close] || '))'
      output_open = options[:output_open] || '{{'
      output_close = options[:output_close] || '}}'

      content
        .gsub(code_open, '<%-')
        .gsub(code_close, '-%>')
        .gsub(output_open, '<%=')
        .gsub(output_close, '%>')
    end
  end
end
