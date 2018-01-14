module ApplicationHelper
  # 根据所在的页面返回完整的标题
  def full_title(page_title = '')
    base_title = "RIPDENT"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  class RemoteLinkRenderer < WillPaginate::ViewHelpers::LinkRenderer
    def prepare(collection, options, template)
    @remote = options.delete(:remote) || {}
    super
    end

    protected
      def page_link(page, text, attributes = {})
      @template.link_to_remote(text, {:url => url_for(page), :method => :get}.merge(@remote))
    end

  end


  require 'rouge'
  require 'rouge/plugins/redcarpet'

  class HTML < Redcarpet::Render::HTML
    # to use Rouge with Redcarpet
    include Rouge::Plugins::Redcarpet
    def rouge_formatter(opts={})
      opts ={
        line_numbers: true,
        wrap: true,
      }
      Rouge::Formatters::HTML.new(opts)
    end
  end

  def markdown(text)
    render_options = {
      filter_html:     false,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow' },
      prettify:        true
    }
    renderer = HTML.new(render_options)

    extensions = {
      autolink:           true,
      fenced_code_blocks: true,
      lax_spacing:        true,
      no_intra_emphasis:  true,
      strikethrough:      true,
      superscript:        true,
      quote:              true,
      highlight:          true,
      footnotes:          true,
      underline:          true,
      tables:             true
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
