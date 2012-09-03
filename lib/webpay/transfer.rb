module Webpay
  class Transfer < APIResource
    include Webpay::APIOperations::List

    def transactions(params={})
      response, api_key = Webpay.request(:get, transactions_url, @api_key, params)
      Util.convert_to_webpay_object(response, api_key)
    end

    private

    def transactions_url
      url + '/transactions'
    end
  end
end
