//
//  BlogEntriesTableViewController.swift
//  My Daily Blog
//
//  Created by Mikhail Bozhenov on 26.06.2021.
//

import UIKit

class BlogEntriesTableViewController: UITableViewController {
    var blogEntries: [BlogEntry] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let dataFromCoreDara = try? context.fetch(BlogEntry.fetchRequest()) as? [BlogEntry] {
                blogEntries = dataFromCoreDara;
                self.tableView.reloadData();
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blogEntries.count;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell();
        let blogEntry = blogEntries[indexPath.row];
        
        row.textLabel?.text = blogEntry.content;

        return row;
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryViewController {

        }
    }

}
