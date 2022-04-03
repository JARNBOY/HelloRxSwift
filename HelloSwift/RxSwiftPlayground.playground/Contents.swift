import UIKit
import RxSwift
import RxCocoa

let subject = PublishSubject<String>()
let trigger = PublishSubject<String>()
let disposeBag = DisposeBag()

subject.skipUntil(trigger)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

subject.onNext("A")
subject.onNext("B")

trigger.onNext("X")

subject.onNext("C")

