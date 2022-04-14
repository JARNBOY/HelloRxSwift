import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()


let button = PublishSubject<Void>()
let textfield = PublishSubject<String>()

let observable = button.withLatestFrom(textfield)
let disposable = observable.subscribe(onNext:{ value in
        print(value)
})

textfield.onNext("Sw")
textfield.onNext("Swif")


textfield.onNext("Swift")
textfield.onNext("Swift Rock!")
button.onNext(())
button.onNext(())
