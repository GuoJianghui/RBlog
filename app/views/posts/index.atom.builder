# configuration options for feed
feed_options = {
  # set feed language
  language: 'en-ZH'
  #set url for feed, default to current URL
}
# github.com/rails/rails/blob/master/
#   actionpack/lib/action_view/helpers/atom_feed_helper.rb#L96
atom_feed feed_options do |feed|
  # set feed title
  feed.title "Blog by Rip"
  # set feed updated date, setting publish_date of the newest post
  feed.updated @posts.maximum(:created_at)

  @posts.each do |post|
    # configuration options for feed entry
    feed_entry_options = {
      # set entry published date, otherwise will be by default created_at
      published: post.created_at,
      # set entry updated date, otherwise will be by default updated_at
      updated:   post.updated_at
    }
    # github.com/rails/rails/blob/master/
    #   actionpack/lib/action_view/helpers/atom_feed_helper.rb#L180
    feed.entry post, feed_entry_options do |entry|
      # set entry title, to use html add type: 'html' (default: 'text')
      entry.title post.title
      # to display some HTML in entry
      plain_html = '<b>I\'m plain HTML</b>'
      entry.content plain_html, type: 'html'
      # to display image for entry, we got some thumb image in post
      #entry.content image_tag(post.image.url(:thumb)), type: 'html'
      # set entry author
      entry.author do |author|
        author.name "rip"
      end
      # URL for entry, defaults to the URL for the record
      entry.url post_url(post)
      # set entry summary, for example first 100 characters of post
      entry.summary post.body[0..100]
    end
  end
end
