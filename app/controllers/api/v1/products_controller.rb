module Api
  module V1
    class ProductsController < BaseController
      def index
        if params[:sort]
          sorting = params[:sort]
        else
          sorting = nil
        end

        if sold_out = params.dig(:sold_out_filter)
          sold_out = sold_out
        else
          sold_out = nil
        end

        everything = if sorting
          Product.select('*').order(id: sorting.to_sym)
        elsif sold_out
          Product.select('*').where(sold_out: to_b(sold_out))
        else
          Product.select('*').order(id: :asc)
        end

        render json: everything.to_json
      end

      def to_b(val)
        if val == 'true'
          return true
        else
          return false
        end
      end
    end
  end
end
