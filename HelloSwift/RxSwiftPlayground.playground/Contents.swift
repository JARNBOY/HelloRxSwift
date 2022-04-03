import UIKit
import RxSwift
import RxCocoa

let subject = PublishSubject<String>()
let trigger = PublishSubject<String>()
let disposeBag = DisposeBag()



subject.takeUntil(trigger)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

subject.onNext("1")
subject.onNext("2")

trigger.onNext("X")

subject.onNext("3")

