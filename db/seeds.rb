# include users with blank values for budget_amount and pay_period

abe = User.new(username: 'abe', email: 'abe@abe.com', password: 'password', budget_amount: 40, pay_period: 1)

abe.save
# username: string, email: string, password_digest: string, budget_amount: integer, pay_period: time, created_at: datetime,