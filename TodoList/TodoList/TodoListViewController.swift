

import UIKit

class TodoListViewController: UIViewController {
    @IBOutlet var tableView:UITableView!
    var items: [Todo] = [Todo(title: "Working", isCompleted: false),
                         Todo(title: "Coding", isCompleted: false),
                         Todo(title: "Exercising", isCompleted: false),
                         Todo(title: "Cleaning", isCompleted: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension TodoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoCell
        cell.data = items[indexPath.row]
        cell.tapAction = {
            self.items[indexPath.row].isCompleted = true
            tableView.reloadRows(at: [indexPath], with: .none)
        }

        return cell
    }
}

extension TodoListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

//MARK: - Helpers
extension TodoListViewController {
    @IBAction private func addTodo() {
        let addAlert = UIAlertController(title: "New Todo", message: "", preferredStyle: .alert)

        addAlert.addTextField { textField in
            textField.placeholder = "Enter something"
        }
        
        let ok = UIAlertAction(title: "OK", style: .default) { _ in
            if let textField = addAlert.textFields?.first, let inputText = textField.text {
                self.items.append(Todo(title: inputText, isCompleted: false))
                self.tableView.reloadData()
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        addAlert.addAction(ok)
        addAlert.addAction(cancel)

        self.present(addAlert, animated: true, completion: nil)
    }
}
