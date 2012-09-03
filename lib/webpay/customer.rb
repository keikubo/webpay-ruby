module Webpay
  class Customer < APIResource
    include Webpay::APIOperations::Create
    include Webpay::APIOperations::Delete
    include Webpay::APIOperations::Update
    include Webpay::APIOperations::List

    def add_invoice_item(params)
      InvoiceItem.create(params.merge(:customer => id), @api_key)
    end

    def invoices
      Invoice.all({ :customer => id }, @api_key)
    end

    def invoice_items
      InvoiceItem.all({ :customer => id }, @api_key)
    end

    def charges
      Charge.all({ :customer => id }, @api_key)
    end

    def cancel_subscription(params={})
      response, api_key = Webpay.request(:delete, subscription_url, @api_key, params)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    def update_subscription(params)
      response, api_key = Webpay.request(:post, subscription_url, @api_key, params)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    def delete_discount
      Webpay.request(:delete, discount_url, @api_key)
      refresh_from({ :discount => nil }, api_key, true)
    end

    private

    def discount_url
      url + '/discount'
    end

    def subscription_url
      url + '/subscription'
    end
  end
end
