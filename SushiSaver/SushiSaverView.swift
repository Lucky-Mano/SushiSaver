//
//  SushiSaverView.swift
//  SushiSaver
//
//  Created by Lucky on 2018/09/03.
//  Copyright © 2018年 Lucky. All rights reserved.
//

import ScreenSaver

class SushiSaverView: ScreenSaverView {
    private let str: NSString = "🍣"
    
    public override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        self.animationTimeInterval = 3.0
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.animationTimeInterval = 3.0
    }
    
    public override func animateOneFrame() {
        let rect: NSRect = self.bounds
        
        let attr: NSMutableDictionary = NSMutableDictionary()
        attr.setObject(NSFont(name: "ヒラギノ角ゴシック W9", size: 128.0) as Any, forKey: kCTFontAttributeName as! NSCopying)
        
        str.draw(at: NSMakePoint(SSRandomFloatBetween(0.0, rect.size.width),
                                 SSRandomFloatBetween(0.0, rect.size.height)),
                 withAttributes: attr as? [NSAttributedStringKey : Any])
    }
}
