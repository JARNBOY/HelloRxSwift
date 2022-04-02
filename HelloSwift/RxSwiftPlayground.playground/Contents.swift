import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

let relay =  BehaviorRelay(value: ["item 0"])//BehaviorRelay(value: [String]())

var value = relay.value
value.append("item 1")
value.append("item 2")
value.append("item 3")

relay.accept(value)

relay.asObservable()
    .subscribe{ event in
    print(event)
}
