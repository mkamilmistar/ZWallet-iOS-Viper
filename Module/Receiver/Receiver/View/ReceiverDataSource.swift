//
//  ReceiverDataSource.swift
//  Receiver
//
//  Created by MacBook on 26/05/21.
//

import Foundation
import UIKit
import Core

class ReceiverDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var viewController: ReceiverViewController!
    var allDataReceiver: [ReceiverEntity] = []
    lazy var filteredData = self.allDataReceiver
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ReceiverCell.self), for: indexPath) as! ReceiverCell
        
        cell.showDataReceiver(receiver: self.filteredData[indexPath.row])
        cell.delegate = self.viewController
        
        cell.selectionStyle = .none
        
        return cell
    }
}
