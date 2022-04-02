import UIKit
import RxSwift

let disposeBag = DisposeBag()

let subject =  BehaviorSubject(value: "initial Value")

subject.onNext("Last Issue")
subject.subscribe{ event in
    print(event)
}

subject.onNext("Issue 1")
subject.onNext("Issue 2")
subject.onNext("Issue 3")
