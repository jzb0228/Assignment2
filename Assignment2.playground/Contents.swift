import UIKit

func payment(_ loanAmount: Int, _ numberOfPayments: Int, _ intRate: Float) -> Float {
    
    let rate  = intRate / 100
    let amortConst = (rate * powf((1.0 + rate), Float(numberOfPayments))) / (powf((1 + rate), Float(numberOfPayments)) - 1)
    let payment = Float(loanAmount) * amortConst
    
    return round(payment * 100) / 100.0
}

func convertToMonthly(_ intRate: Float) -> Float {
    return intRate / 12
}


print(payment(150000, 30, 5.0))
print(payment(20000,2,convertToMonthly(4.4)))
