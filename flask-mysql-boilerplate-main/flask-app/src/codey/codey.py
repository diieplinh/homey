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
    cursor = db.get_db().cursor()
    cursor.execute('select first_name, last_name, user_id from Users')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Gets the all messages sent to a user
@codey.route('/messages/<recipient_id>', methods=['GET'])
def get_messages_received_by(recipient_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select sender_id, recipient_id, content, sent_at, message_id from Messages where recipient_id = %s', recipient_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Gets the all messages sent between two users
@codey.route('/messages/<user1>/<user2>', methods=['GET'])
def get_messages_between(user1, user2):
    cursor = db.get_db().cursor()
    select_stmt = 'select sender_id, recipient_id, content, sent_at, message_id '
    select_stmt += 'from Messages '
    select_stmt += 'where (sender_id = "' + user1 + \
        '" && recipient_id = "' + user2 + '") '
    select_stmt += '|| (sender_id = "' + user2 + \
        '" && recipient_id = "' + user1 + '") '
    select_stmt += 'order by sent_at asc;'
    cursor.execute(select_stmt)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Events Routes

# Gets the events from the DB
@codey.route('/events', methods=['GET'])
def get_events():
    cursor = db.get_db().cursor()
    cursor.execute(
        'select title, details, scheduled, created_by, event_id from Events')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Gets the event_id from the DB
@codey.route('/events/<event_id>', methods=['GET'])
def get_events_info(event_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Posts the event from the DB
@codey.route('/events/<event_id>', methods=['POST'])
def post_events_info(event_id):
    return  # todo

# Put the event in the DB
@codey.route('/events/<event_id>', methods=['PUT'])
def put_events_info(event_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Delete the event from the DB
@codey.route('/events/<event_id>', methods=['DELETE'])
def del_events_info(event_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

### Tasks Routes

# Gets information for all tasks from DB
@codey.route('/tasks', methods=['GET'])
def get_tasks_info():
    cursor = db.get_db().cursor()
    cursor.execute(
        'select assigned_to, complete_by, title, details, task_status, task_id from Tasks')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Gets information for the given task category from DB
@codey.route('/tasks/<category_id>', methods=['GET'])
def get_task_category_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select category_id, task_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Gets all tasks assigned to the given user
@codey.route('/tasks/<assigned_to>', methods=['GET'])
def get_task_assignee_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select assigned_to, task_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Creates a new task
@codey.route('/tasks/<task_id>', methods=['POST'])
def post_tasks_info(task_id):
    return

# Deletes the given task
@codey.route('/tasks/<task_id>', methods=['DELETE'])
def del_tasks_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select assigned_to, complete_by, title, details, task_status, task_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response

### Task Categories Routes

# Gets all task categories from the DB
@codey.route('/task_categories', methods=['GET'])
def get_task_categories():
    cursor = db.get_db().cursor()
    cursor.execute('select category_name from TaskCategories')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Creates a new task category
@codey.route('/task_categories', methods=['POST'])
def add_task_category():
    cursor = db.get_db().cursor()
    cursor.execute(
        'select assigned_to, complete_by, title, details, task_status, task_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response

# Gets all shopping categories from the DB
@codey.route('/shopping_categories', methods=['GET'])
def get_shopping_categories():
    cursor = db.get_db().cursor()
    cursor.execute('select category_name from ShoppingCategories')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response
