# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

WillPaginate::ViewHelpers.pagination_options[:class] = 'digg_pagination'

WillPaginate::ViewHelpers.pagination_options[:previous_label] = '<i class="fa fa-arrow-left" aria-hidden="true"></i>'

WillPaginate::ViewHelpers.pagination_options[:next_label] = '<i class="fa fa-arrow-right" aria-hidden="true"></i>'

WillPaginate::ViewHelpers.pagination_options[:renderer] = 'remote_link_renderer_helper'
