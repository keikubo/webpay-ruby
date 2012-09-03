module Webpay
  class InvoiceItem < APIResource
    include Webpay::APIOperations::List
    include Webpay::APIOperations::Create
    include Webpay::APIOperations::Delete
    include Webpay::APIOperations::Update
  end
end
