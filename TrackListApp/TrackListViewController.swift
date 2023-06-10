//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by Shamkhan Mutuskhanov on 10.06.2023.
//

import UIKit

final class TrackListViewController: UITableViewController {
    private var trackList = Track.getTrackList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "track", for: indexPath)
        let track = trackList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = track.song
        content.secondaryText = track.artist
        cell.contentConfiguration = content
        
        
        return cell
    }

 
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }
}
