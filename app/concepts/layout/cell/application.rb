module Layout::Cell
  class Application < Trailblazer::Cell
    include ActionView::Helpers::CsrfHelper
    include ActionView::Helpers::CspHelper
    include Webpacker::Helper

    def content_security_policy?
      context[:controller].send(:content_security_policy?)
    end
  end
end
