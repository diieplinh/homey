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
@codey.route('/users/<user_id>', methods=['GET'])
def get_user_info(user_id):
    cursor = db.get_db().cursor()
    cursor.execute('select first_name, last_name, user_id from Users where user_id = %s', user_id)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        return the_response

# Gets  all recipients of messages from DB
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

# Put the event in the DB
@codey.route('/events/<event_id>', methods=['PUT'])
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

# Delete the event from the DB
@codey.route('/events/<event_id>', methods=['DELETE'])
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

