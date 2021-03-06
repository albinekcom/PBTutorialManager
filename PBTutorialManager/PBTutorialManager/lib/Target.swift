//
//  Target.swift
//  PBTutorialManager
//
//  Created by Paul Bancarel on 05/07/2016.
//  Copyright © 2016 TheFrenchTouchDeveloper. All rights reserved.
//

import Foundation
import UIKit
import JMHoledView

/**
 Target represent a "Tutorial object" you can point a
 view associated with a message to describe an action
 */
class Target : NSObject{
    
    enum TargetPosition{
        case Top
        case Right
        case Bottom
        case Left
        case TopRight
        case TopLeft
        case BottomRight
        case BottomLeft
    }
    
    var view:UIView? /* The view you want to highlight */
    var message:String! /* The text you want to show */
    var textAlignement:NSTextAlignment = NSTextAlignment.Center /* The text alignement */
    var numberOfLines:Int = 0
    var position:TargetPosition! /* The position of your text around the highlight view */
    var shape:JMHoleType! /* The shape of the mask to highlight the view */
    var duration:Float? /* time duration before to show the next target */
    var isTapable:Bool = false /* if isTapable is true you can tap to dismiss the target */
    var closure:(Void -> Void)? /* A closure executed after the target has been shown */
    var persistant:Bool = true /* if persistant the target stay on screen when the next one show up, you can add multiple target one after one */
    var breakPoint = false /* breakpoint is a target which attempt a user click to continue */
    
    /*Margins*/
    var topMargin:CGFloat = 0
    var rightMargin:CGFloat = 0
    var bottomMargin:CGFloat = 0
    var leftMargin:CGFloat = 0
    
    var topTextMargin:CGFloat = 0
    var rightTextMargin:CGFloat = 0
    var bottomTextMargin:CGFloat = 0
    var leftTextMargin:CGFloat = 0
    
    /*Arrow*/
    var withArrow:Bool = true
    var heightArrow:CGFloat = 0
    var widthArrow:CGFloat = 0
    
    init(view:UIView?) {
        super.init()
        self.view = view
        self.message = ""
        self.duration = 1.0
        self.position = .Bottom
        self.shape = JMHoleType.Cirle
    }
    
    func message(message:String) -> Target{
        self.message = message;
        return self;
    }
    func position(position:TargetPosition) -> Target{
        self.position = position;
        return self;
    }
    func shape(shape:JMHoleType) -> Target{
        self.shape = shape;
        return self;
    }
    func duration(duration:Float) -> Target{
        self.duration = duration;
        return self;
    }
    func isTapable(isTapable:Bool) -> Target{
        self.isTapable = isTapable;
        return self;
    }
    func onCompletion(onCompletion:(Void -> Void)) -> Target{
        self.closure = onCompletion;
        return self;
    }
    func persistant(persistant:Bool) -> Target{
        self.persistant = persistant;
        return self;
    }
    func textAlignement(textAlignement:NSTextAlignment) -> Target{
        self.textAlignement = textAlignement;
        return self;
    }
    func withArrow(bool:Bool) -> Target{
        withArrow = bool;
        return self;
    }
    func heightArrow(heightArrow:CGFloat) -> Target{
        self.heightArrow = heightArrow;
        return self;
    }
    func widthArrow(widthArrow:CGFloat) -> Target{
        self.widthArrow = widthArrow;
        return self;
    }
    
    func topMargin(topMargin:CGFloat) -> Target{
        self.topMargin = topMargin;
        return self;
    }
    func rightMargin(rightMargin:CGFloat) -> Target{
        self.rightMargin = rightMargin;
        return self;
    }
    func bottomMargin(bottomMargin:CGFloat) -> Target{
        self.bottomMargin = bottomMargin;
        return self;
    }
    func leftMargin(leftMargin:CGFloat) -> Target{
        self.leftMargin = leftMargin;
        return self;
    }
    func topTextMargin(topTextMargin:CGFloat) -> Target{
        self.topTextMargin = topTextMargin;
        return self;
    }
    func rightTextMargin(rightTextMargin:CGFloat) -> Target{
        self.rightTextMargin = rightTextMargin;
        return self;
    }
    func bottomTextMargin(bottomTextMargin:CGFloat) -> Target{
        self.bottomTextMargin = bottomTextMargin;
        return self;
    }
    func leftTextMargin(leftTextMargin:CGFloat) -> Target{
        self.leftTextMargin = leftTextMargin;
        return self;
    }
    func breakPoint(breakPoint:Bool) -> Target{
        self.breakPoint = breakPoint;
        self.isTapable = true;
        return self;
    }
}