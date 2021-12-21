class Account < ApplicationRecord
  enum acc_type: [:OWNER, :CLERK, :CUSTOMER]
end
