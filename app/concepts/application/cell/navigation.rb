module Application::Cell
  class Navigation < Trailblazer::Cell

    def signed_in?
      context[:current_user]
    end

    def email
      context[:current_user].email
    end

    def avatar_url
      hexed = Digest::MD5.hexdigest(email)
      "https://www.gravatar.com/avatar/#{hexed}?s=36"
    end
  end
end
