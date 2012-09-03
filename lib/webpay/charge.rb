module Webpay
  class Charge < APIResource
    include Webpay::APIOperations::List
    include Webpay::APIOperations::Create
    include Webpay::APIOperations::Update

    def refund(params={})
      response, api_key = Webpay.request(:post, refund_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    def capture(params={})
      response, api_key = Webpay.request(:post, capture_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    private

    def refund_url
      url + '/refund'
    end

    def capture_url
      url + '/capture'
    end
  end
end
