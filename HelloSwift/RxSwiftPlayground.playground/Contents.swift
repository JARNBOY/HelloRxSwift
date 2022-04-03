import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

let strikes = PublishSubject<String>()

strikes
    .ignoreElements()
    .subscribe { _ in
        print("[Subscribtion is called]")
    }.disposed(by: disposeBag)

strikes.onNext("A")
strikes.onNext("B")
strikes.onNext("C")

strikes.onCompleted()
