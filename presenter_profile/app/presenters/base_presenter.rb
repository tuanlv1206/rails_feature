class BasePresenter
  def initialize(object, template)
    @object = object
    @template = template
  end

  private

    def self.presents(name)
      define_method(name) do
        @object
      end
    end

    def h
      @template
    end

    def markdown(text)
      Markdown.new(text, :hard_wrap, :filter_html, :autolink).to_html.html_safe
    end

    def method_missing(*arg, &block)
      @template.send(*arg, &block)
    end
end
