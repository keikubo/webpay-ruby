module Webpay
  module APIOperations
    module Delete
      def delete
        response, api_key = Webpay.request(:delete, url, @api_key)
        refresh_from(response, api_key)
        self
      end
    end
  end
end
