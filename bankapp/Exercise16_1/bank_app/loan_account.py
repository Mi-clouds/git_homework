from bank_app.bank_app import Account
import calendar


class LoanAccount(Account):
    def __init__(self, name, balance, withdrawal_fee, interest, credit_rating):
        Account.__init__(self, name, balance, withdrawal_fee)
        self.interest = interest
        self.credit_rating = credit_rating

    def get_credit_rating(self):
        return self.credit_rating

        #add print to a statement class return self.name, "has a", str(self.credit_rating), "credit rating"

    def get_total_amount(self):
        return (-1 * int(self._balance)) + (1 + self.interest)

        #return "You will pay a total of: {}".format((-1 * int(self.initial)) + (1 + self.interest))

    def make_payment(self, amount):
        self._balance += amount
        return

    # not the job of loan account.py to do print this - maybe payment calendar class - make it more generic
    @property
    def see_payment_schedule(self):
        print("Loan payments should be made on: ")
        for m in range(1, 13):
            cal = calendar.monthcalendar(2021, m)  # 2021 hardcoded will raise an issue next year
            weekone = cal[0]
            weektwo = cal[1]  # hard coded the first thursday will fall in one of these two weeks - loop to find out which it is
            if weekone[calendar.THURSDAY] != 0:
                payment_day = weekone[calendar.THURSDAY]
            else:
                payment_day = weektwo[calendar.THURSDAY]

            print("%10s %2d" % (calendar.month_name[m], payment_day))
        return

    def __str__(self):
        return "Loan Account: \nName: {}, initial: {}, credit_rating: {}".format(self.name, self.initial, self.credit_rating)

    def __repr__(self):
        return f"name={self.name}, initial={self.initial}, credit_rating={self.credit_rating}"


if __name__ == "__main__":
    loan_1 = LoanAccount("Bara", -10000, 3, 0.25, "good")
    #print(loan_1)
    # TODO why does attribute initial not exist
    #print(loan_1.initial)
    print(loan_1.name)
    print(loan_1.credit_rating)
    print(loan_1.interest)
    #loan_1.get_total_amount()
    print(loan_1.credit_rating)
    loan_1.get_credit_rating()
    print(loan_1.make_payment(500))
    loan_1.get_balance()
    loan_1.see_payment_schedule()
