# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

def get_post_start(post)
  content = post.compiled_content
  if content =~ /\s<!-- more -->\s/
    content = content.partition('<!-- more -->').first +
    "<div class='read-more'><a href='#{post.path}'>Mehr &rsaquo;&rsaquo;</a></div>"
  end
  return content
end

def my_tags_function
  if @item[:tags].nil?
    '(none)'
  else
    @item[:tags].join(', ')
  end
end

def previous_link
  prev = sorted_articles.index(@item) + 1
  prev_article = sorted_articles[prev]
  if prev_article.nil?
    ''
  else
    title = prev_article[:title]
    html = "<button type='button' class='btn btn-default'><i class='fa fa-angle-double-left'></i> Älterer Artikel </button>"
    link_to(html, prev_article.reps[0], :class => "previous", :title => title)
  end
end

def next_link
  nxt = sorted_articles.index(@item) - 1
  if nxt < 0
    ''
  else
    post = sorted_articles[nxt]
    title = post[:title]
    html = "<button type='button' class='btn btn-default'><i class='fa fa-angle-double-right'></i> Neuerer Artikel </button>"
    link_to(html, post.reps[0], :class => "next", :title => title)
  end
end