//
//  Task.swift
//  To-Do Swift App
//
//  Created by Sayor Debbarma on 20/02/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
