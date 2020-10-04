# frozen_string_literal: true

module Blacklight
  module Document
    class MoreLikeThisComponent < ::ViewComponent::Base
      with_collection_parameter :document

      def initialize(document:)
        @document = document
      end

      def render?
        @document.more_like_this.present?
      end

      def link_to_document(*args)
        @view_context.link_to_document(*args)
      end
    end
  end
end
