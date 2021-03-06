
import UIKit

class LineView: UIView {
    
    private var fromView: IdeaView?
    private var toView: IdeaView?
    
    var data: [String: String] {
        var data = [String: String]()
        data["fromUuid"] = fromView?.uuid
        data["toUuid"] = toView?.uuid
        return data
    }
    
    init(from: IdeaView, to: IdeaView) {
        super.init(frame: CGRect.zero)
        backgroundColor = UIColor.clear
        fromView = from
        toView = to
        update()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let origin = fromView!.center - frame.origin
        let destination = toView!.center - frame.origin
        
        let controlVector = CGPoint(x: (destination.x - origin.x) * 0.5, y:0)
        path.move(to: origin)
        path.addCurve(to: destination, controlPoint1: origin + controlVector, controlPoint2: destination - controlVector)
        path.lineWidth = 5.0
        UIColor.black.setStroke()
        path.stroke()
    }
    
    func update() {
        guard let fromView = fromView, let toView = toView else { return }
        
        self.frame = fromView.frame.union(toView.frame)
        self.setNeedsDisplay()
    }
}
