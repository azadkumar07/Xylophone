import UIKit
import AudioToolbox

class ViewController: UIViewController{
    
    let a=["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ x: UIButton) {
        play(name: a[x.tag-1])
    }
    func play(name:String){
        if let soundURL = Bundle.main.url(forResource: name, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
  

}

