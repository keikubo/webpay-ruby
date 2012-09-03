module Webpay
  class Token < APIResource
    include Webpay::APIOperations::Create
  end
end
