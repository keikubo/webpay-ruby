module Webpay
  class Coupon < APIResource
    include Webpay::APIOperations::Create
    include Webpay::APIOperations::Delete
    include Webpay::APIOperations::List
  end
end
