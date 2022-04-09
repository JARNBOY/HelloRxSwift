import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

struct Student{
    var score: BehaviorRelay<Int>
}


let student = PublishSubject<Student>()

let numbers = Observable.of(2,3,4)

let observable = numbers.startWith(1)
observable
    .subscribe(onNext:{
        print($0)
    }).disposed(by: disposeBag)


