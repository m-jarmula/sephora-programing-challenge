module Api
  module V1
    class ProductsController < BaseController
      def index
        everything = Product.select('*').order(id: :asc)
        render json: everything.to_json
      end
    end
  end
end
