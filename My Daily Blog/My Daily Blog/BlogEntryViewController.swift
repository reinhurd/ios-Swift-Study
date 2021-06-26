//
//  BlogEntryViewController.swift
//  My Daily Blog
//
//  Created by Mikhail Bozhenov on 26.06.2021.
//

import UIKit

class BlogEntryViewController: UIViewController {

    @IBOutlet weak var blogEntryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let blogEntry = BlogEntry(context: context);
            blogEntry.date = datePicker.date;
            blogEntry.content = blogEntryTextView.text;
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext();
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
