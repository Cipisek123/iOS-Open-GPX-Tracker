//
//  InterfaceController.swift
//  Watch Tracker Extension
//
//  Created by Vincent on 12/1/19.
//  Copyright © 2019 TransitBox. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var newPinButton: WKInterfaceButton!
    @IBOutlet weak var resetButton: WKInterfaceButton!
    @IBOutlet weak var saveButton: WKInterfaceButton!
    @IBOutlet weak var trackerButton: WKInterfaceButton!
    @IBOutlet weak var followUserButton: WKInterfaceButton!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    ///
    /// It adds a Pin (Waypoint/Annotation) to current user location.
    ///
    @objc func addPinAtMyLocation() {
        print("Adding Pin at my location")
        let waypoint = GPXWaypoint(coordinate: map.userLocation.coordinate)
        map.addWaypoint(waypoint)
        self.hasWaypoints = true
    }

}
