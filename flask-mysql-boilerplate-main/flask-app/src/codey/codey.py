from flask import Blueprint, request, jsonify, make_response
import json
from src import db

codey = Blueprint('codey', __name__)

# Gets all users from the DB
@codey.route('/users', methods=['GET'])
def get_users():
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

# Gets information for the given userID from DB
@codey.route('/users/<user_id>', methods=['GET', 'DEL'])
def get_user_info(user_id):
    cursor = db.get_db().cursor()
    json_data = []
    if request.method == 'GET' :
        cursor.execute('select first_name, last_name, user_id from Users where user_id = %s', user_id)
        row_headers = [x[0] for x in cursor.description]
        theData = cursor.fetchall()
        for row in theData:
            json_data.append(dict(zip(row_headers, row)))
    elif request.method == 'DEL':
        cursor.execute('delete from Users where user_id = %s', user_id)
        db.get_db().commit()
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Gets all recipients of messages from DB
@codey.route('/messages/<recipient_id>', methods=['GET'])
def get_messages_info(recipient_id):
    cursor = db.get_db().cursor()
    cursor.execute('select sender_id, recipient_id, content, sent_at, message_id from Messages where reciptient_id = %s', recipient_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response

# Posts the messages from the DB
@codey.route('/messages', methods=['POST'])
def get_messages():
    cursor = db.get_db().cursor()
    cursor.execute('select sender_id, recipient_id, content, sent_at, message_id from Messages')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response

# Gets the events from the DB
@codey.route('/events', methods=['GET'])
def get_events():
    cursor = db.get_db().cursor()
    cursor.execute('select title, details, scheduled, created_by, event_id from Events')
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
    cursor.execute('select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
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
    cursor = db.get_db().cursor()
    cursor.execute('select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response

# Put the event in the DB
@codey.route('/events/<event_id>', methods=['PUT'])
def put_events_info(event_id):
    cursor = db.get_db().cursor()
    cursor.execute('select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
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
    cursor.execute('select title, details, scheduled, created_by, event_id from Events where event_id = %s', event_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response
    
# Gets information for the given task from DB
@codey.route('/tasks/<task_id>', methods=['GET'])
def get_task_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute('select user_id, task_name, task_status, task_id from Tasks where task_id = %s', task_id)
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
    cursor.execute('select tcategory_id, task_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response


# Gets information for the given task category from DB
@codey.route('/tasks/<assigned_to>', methods=['GET'])
def get_task_assignee_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute('select user_id, task_id from Tasks where task_id = %s', task_id)
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
    cursor.execute('select scategory_name, shopping_id from Shopping_Categories')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response


# Gets all tasks categories from the DB
@codey.route('/tasks_categories', methods=['GET'])
def get_task_categories():
    cursor = db.get_db().cursor()
    cursor.execute('select tcategory_name, task_id from Task_Categories')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

# Posts the tasks from the DB
@codey.route('/tasks/<task_id>', methods=['POST'])
def post_tasks_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute('select title, details, scheduled, created_by, event_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response


# Posts the tasks from the DB
@codey.route('/tasks/<task_id>', methods=['DELETE'])
def post_tasks_info(task_id):
    cursor = db.get_db().cursor()
    cursor.execute('select title, details, scheduled, created_by, event_id from Tasks where task_id = %s', task_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response





