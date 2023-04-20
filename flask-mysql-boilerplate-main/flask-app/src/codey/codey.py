from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

codey = Blueprint('codey', __name__)

### Helper Methods

# Executes a SQL select statement
def get_request_db(stmt):
    cursor = db.get_db().cursor()
    cursor.execute(stmt)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Executes a SQL delete statement
def del_request_db(stmt):
    cursor = db.get_db().cursor()
    cursor.execute(stmt)
    db.get_db().commit()
    the_response = make_response(jsonify(message='User deleted successfully'))
    the_response.status_code = 200
    return the_response

# Executes a SQL insert statement
def post_request_db(stmt):
    cursor = db.get_db().cursor()
    cursor.execute(stmt)
    db.get_db().commit()
    the_response = make_response(jsonify(message='User added successfully'))
    the_response.status_code = 200
    return the_response

# Executes a SQL update statement
def put_request_db(stmt):
    cursor = db.get_db().cursor()
    cursor.execute(stmt)
    db.get_db().commit()
    the_response = make_response(jsonify(message='User updated successfully'))
    the_response.status_code = 200
    return the_response

### User Routes

# Gets all users from the DB
@codey.route('/users', methods=['GET'])
def get_users():
    query = 'select first_name, last_name, user_id from Users'
    return get_request_db(query)

# Creates a new user with the given information.
@codey.route('/users', methods=['POST'])
def add_user():
    req_data = request.get_json()
    first = req_data['first_name']
    last = req_data['last_name']

    query = 'INSERT INTO Users (first_name, last_name) VALUES ("' + \
        first + '", "' + last + '")'

    return post_request_db(query)

# Gets information for the given userID from DB
@codey.route('/users/<user_id>', methods=['GET'])
def get_user_info(user_id):
    query = 'select first_name, last_name, user_id from Users where user_id = %s' % user_id
    return get_request_db(query)

# Deletes the user with the given userID from DB
@codey.route('/users/<user_id>', methods=['DELETE'])
def remove_user(user_id):
    query = 'delete from Users where user_id = %s' % user_id
    return del_request_db(query)

# Updates the user with the given userID.
@codey.route('/users/<user_id>', methods=['PUT'])
def edit_user(user_id):
    req_data = request.get_json()
    first = req_data['first_name']
    last = req_data['last_name']

    query = 'update Users set first_name = "' + first + \
        '", last_name = "' + last + '" where user_id ="' + user_id + '"'
    
    return put_request_db(query)

### Messages Routes

# Gets all messages from the DB
@codey.route('/messages', methods=['GET'])
def get_messages():
    query = 'select first_name, last_name, user_id from Users'
    return get_request_db(query)

# Gets the all messages sent to a user
@codey.route('/messages/<recipient_id>', methods=['GET'])
def get_messages_received_by(recipient_id):
    query = 'select sender_id, recipient_id, content, sent_at, message_id from Messages where recipient_id = %s' % recipient_id
    return get_request_db(query)

# Gets the all messages sent between two users
@codey.route('/messages/<user1>/<user2>', methods=['GET'])
def get_messages_between(user1, user2):
    query = 'select sender_id, recipient_id, content, sent_at, message_id '
    query += 'from Messages '
    query += 'where (sender_id = "' + user1 + \
        '" && recipient_id = "' + user2 + '") '
    query += '|| (sender_id = "' + user2 + \
        '" && recipient_id = "' + user1 + '") '
    query += 'order by sent_at asc;'
    
    return get_request_db(query)

### Events Routes

# Gets all events from the DB
@codey.route('/events', methods=['GET'])
def get_events():
    query = 'select title, details, scheduled, created_by, event_id from Events'
    return get_request_db(query)

# Adds a new event to the DB
@codey.route('/events', methods=['POST'])
def add_event():
    req_data = request.get_json()
    title = req_data['title']
    details = req_data['details']
    scheduled = req_data['scheduled']
    created_by = req_data['created_by']

    query = 'insert into Events (title, details, scheduled, created_by) values ' + \
       '("%s", "%s", "%s", "%s")' % (title, details, scheduled, created_by)

    return post_request_db(query)

# Gets info for a given event from the DB
@codey.route('/events/<event_id>', methods=['GET'])
def get_events_info(event_id):
    query = 'select title, details, scheduled, created_by, event_id from Events where event_id = %s' % event_id

    return get_request_db(query)

# Update the given event in the DB
@codey.route('/events/<event_id>', methods=['PUT'])
def update_event(event_id):
    req_data = request.get_json()
    title = req_data['title']
    details = req_data['details']
    scheduled = req_data['scheduled']
    query = 'update Events set title = "%s", details = "%s", scheduled = "%s" where event_id = "%s"' % (title, details, scheduled, event_id)
    
    return put_request_db(query)

# Delete the event from the DB
@codey.route('/events/<event_id>', methods=['DELETE'])
def del_events_info(event_id):
    query = 'delete from Events where event_id = %s' % event_id
    
    return del_request_db(query)

### Tasks Routes

# Gets information for all tasks from DB
@codey.route('/tasks', methods=['GET'])
def get_tasks_info():
    query = 'select first_name, last_name, assigned_to, complete_by, title, details, task_status, task_id from Tasks Join Users on Tasks.assigned_to = Users.user_id'
    return get_request_db(query)

# Creates a new task
@codey.route('/tasks', methods=['POST'])
def add_task():
    req_data = request.get_json()

    assigned_to = req_data['assigned_to']
    title = req_data['title']
    details = req_data['details']
    task_status = req_data['task_status']
    complete_by = req_data['complete_by']
    created_by = req_data['created_by']

    query = 'insert into Tasks (assigned_to, title, details, task_status, complete_by, created_by) '
    query += 'values ("%s", "%s", "%s", "%s", "%s", "%s")' % (assigned_to, title, details, task_status, complete_by, created_by)
    
    return post_request_db(query)

# Gets information for the given task category from DB
@codey.route('/tasks/<category_id>', methods=['GET'])
def get_task_category_info(task_id):
    query = 'select category_id, task_id from Tasks where task_id= %s' % task_id
    return get_request_db(query)


# Gets all tasks assigned to the given user
@codey.route('/tasks/<assigned_to>', methods=['GET'])
def get_task_assignee_info(task_id):
    query = 'select assigned_to, task_id from Tasks where task_id = %s' % task_id
    return get_request_db(query)

# Updates a task 
@codey.route('/tasks/<task_id>', methods=['PUT'])
def update_task(task_id):
    return

# Deletes the given task
@codey.route('/tasks/<task_id>', methods=['DELETE'])
def del_tasks_info(task_id):
    query = 'select assigned_to, complete_by, title, details, task_status, task_id from Tasks where task_id = %s' % task_id
    return del_request_db(query)

### Task Categories Routes

# Gets all task categories from the DB
@codey.route('/task_categories', methods=['GET'])
def get_task_categories():
    query = 'select category_name from TaskCategories'
    return get_request_db(query)

# Adds a new task category
@codey.route('/task_categories', methods=['POST'])
def add_task_category():
    req_data = request.get_json()
    category_name = req_data['category_name']
    query = 'insert into TaskCategories (category_name) values ("%s")' % category_name

    return post_request_db(query)

# Gets all shopping categories from the DB
@codey.route('/shopping_categories', methods=['GET'])
def get_shopping_categories():
    query = 'select category_name from ShoppingCategories'
    return get_request_db(query)

# Adds a new shopping category 
@codey.route('/shopping_categories', methods=['POST'])
def add_shopping_category():
    req_data = request.get_json()
    category_name = req_data['category_name']
    query = 'insert into ShoppingCategories (category_name) values ("%s")' % category_name

    return post_request_db(query)
