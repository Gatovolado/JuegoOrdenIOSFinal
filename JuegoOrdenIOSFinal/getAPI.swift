//
//  getAPI.swift
//  JuegoOrdenIOSFinal
//
//  Created by Alumnos on 14/11/24.
//

import UIKit

class getAPI: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var users:[Usuario] = []

    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let url = URL(string: "https://qhavrvkhlbmsljgmbknr.supabase.co/rest/v1/scores?select=*")!
        let apikey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFoYXZydmtobGJtc2xqZ21ia25yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDA3MjY5MTgsImV4cCI6MjAxNjMwMjkxOH0.Ta-_lXGGwSiUGh0VC8tAFcFQqsqAvB8vvXJjubeQkx8"
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.setValue(apikey, forHTTPHeaderField: "apikey")
        URLSession.shared.dataTask(with: request) {
        (data, response, error) in
        if error == nil {
            do {
                self.users = try JSONDecoder().decode([Usuario].self, from: data!)
                print(self.users)
                DispatchQueue.main.async {
                           self.users = self.users.sorted{$0.score > $1.score}
                           self.tableView.reloadData()
                       }
            } catch let errorJson {
                print(errorJson)
            }
        } else {
            print(error ?? "a")
        }
        }.resume()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier:"celdaID", for:
        indexPath)
        celda.textLabel?.text = users[indexPath.row].name
        return celda
    }
}
