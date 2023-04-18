from flask import Blueprint, request, jsonify, make_response, current_app
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
    json_data = []
    cursor.execute('select first_name, last_name, user_id from Users where user_id = %s', user_id)
    row_headers = [x[0] for x in cursor.description]
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    return the_response

@codey.route('/users/<user_id>', methods=['DELETE'])
def remove_user(user_id):
    cursor = db.get_db().cursor()
    cursor.execute('delete from Users where user_id = %s', user_id)
    db.get_db().commit()
    the_response = make_response(jsonify(message='User deleted successfully'))
    the_response.status_code = 200
    return the_response

@codey.route('/users', methods=['POST'])
def add_user():
    req_data = request.get_json()

    first = req_data['first_name']
    last = req_data['last_name']

    insert_stmt = 'INSERT INTO Users (first_name, last_name) VALUES ("' + first + '", "' + last + '")'


    current_app.logger.info(insert_stmt)

    # execute the query
    # cursor represents the temp storage between client and database
    cursor = db.get_db().cursor()
    cursor.execute(insert_stmt)
    db.get_db().commit()
    the_response = make_response(jsonify(message='User added successfully'))
    the_response.status_code = 200
    return the_response
