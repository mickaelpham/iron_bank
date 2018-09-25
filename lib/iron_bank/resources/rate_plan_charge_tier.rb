# frozen_string_literal: true

module IronBank
  module Resources
    # A rate plan charge tier hold the price per unit the customer will be
    # billed for, in his/her currency.
    #
    class RatePlanChargeTier < Resource
      # Excluding 'DiscountAmount' & 'DiscountPercentage', as Zuora stores these
      # values in the 'Price' field.
      def self.exclude_fields
        %w[
          Currency
          DiscountAmount
          DiscountPercentage
          IncludedUnits
          OveragePrice
        ]
      end
      with_schema
      with_cache

      with_one :rate_plan_charge, aka: :charge
    end
  end
end
