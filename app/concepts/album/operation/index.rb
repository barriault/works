module Album::Operation
  class Index < Trailblazer::Operation
    step :get_albums

    def get_albums(ctx, **)
      ctx[:model] = Album.order(name: :asc)
    end
  end
end
