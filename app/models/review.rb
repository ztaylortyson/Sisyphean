class Review < ApplicationRecord
  belongs_to :discovery

  enum coa: {
    failure_to_provide_accurate_iws: 0,
    thirty_day_waiting_time_penalty: 1,
    failure_to_pay_wages: 3,
    labor_code_2751: 4
   }

   enum issue: {
    non_productive_time: 0
   }




end
