class Account < ApplicationRecord
  has_secure_password

  enum acc_type: [:OWNER, :CLERK, :CUSTOMER]
end
