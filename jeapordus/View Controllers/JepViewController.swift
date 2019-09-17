import UIKit

class JepViewController: UIViewController {
    @IBOutlet weak var music: UILabel!
    @IBOutlet weak var compSci: UILabel!
    @IBOutlet weak var randomTopic: UILabel!
    var currentUser: User!
    var counter = 0
    @IBOutlet var gameButtons: [UIButton]!
    var trivia: [Trivia]!
    @IBOutlet weak var musicButton: UIButton!
    
    @IBAction func musicStop(_ sender: UIButton) {
        MusicPlayer.shared.stopBackgroundMusic()
    }
    
    @IBAction func buttonFunction(_ sender: UIButton) {
        let id = sender.tag
        var mode = ""
        
        switch sender.titleLabel?.text {
        case "$200":
            mode = "easy"
        case "$400":
            mode = "medium"
        case "$600":
            mode = "hard"
        default:
            "none"}
        print(id)
        sender.isHidden = true
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let jeopDVC = storyboard.instantiateViewController(withIdentifier: "JeopDVC") as! JeopDVC
        
        jeopDVC.buttonid = id
        jeopDVC.modeChoice = mode
        navigationController?.pushViewController(jeopDVC, animated: true)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setUI()
    }
   //SetUpUI
 private func setUI () {
    musicButton.titleLabel?.font = UIFont(name: "MarkerFelt-Wide", size: 25)
    music.font = UIFont(name: "MarkerFelt-Wide", size: 25)
    compSci.font = UIFont(name: "MarkerFelt-Wide", size: 25)
    randomTopic.font = UIFont(name: "MarkerFelt-Wide", size: 25)
    
    for buttons in gameButtons {
        buttons.titleLabel?.font = UIFont(name: "MarkerFelt-Wide", size: 25)
        
    }
    }
}
