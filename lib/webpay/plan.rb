module Webpay
  class Plan < APIResource
    include Webpay::APIOperations::Create
    include Webpay::APIOperations::Delete
    include Webpay::APIOperations::List
    include Webpay::APIOperations::Update
  end
end
