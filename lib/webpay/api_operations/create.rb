module Webpay
  module APIOperations
    module Create
      module ClassMethods
        def create(params={}, api_key=nil)
          response, api_key = Webpay.request(:post, self.url, api_key, params)
          Util.convert_to_webpay_object(response, api_key)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
