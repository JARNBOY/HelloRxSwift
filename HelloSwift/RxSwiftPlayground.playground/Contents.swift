import UIKit
import RxSwift
import RxCocoa

//let subject = PublishSubject<String>()
let disposeBag = DisposeBag()

Observable.of(2,4,5,6)
    .takeWhile{
        return $0 % 2 == 0
    }.subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

//subject.skipUntil(trigger)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
//
//subject.onNext("A")
//subject.onNext("B")
//
//trigger.onNext("X")
//
//subject.onNext("C")

