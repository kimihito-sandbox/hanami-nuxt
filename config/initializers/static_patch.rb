require 'rack/static'

module Hanami
  class Static < ::Rack::Static
    def initialize(app, root: Hanami.public_directory, header_rules: HEADER_RULES)
      super(app, urls: _urls(root), root: root, header_rules: header_rules, index: 'index.html')
    end
  end
end
