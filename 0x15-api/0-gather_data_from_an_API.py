#!/usr/bin/python3

"""This method returns TO-DO list info for a given
emplyee"""

import sys
import requests


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    user_data = requests.get(url + "users/{}".format(sys.argv[1])).json()
    todo_data = requests.get(url + "todos", parameters={"userId": sys.argv[1]}).json()

    completed_data = [title.get("title") for title in todo_data if title.get("completed_data") is True]
    print("Employee {} is done with tasks({}/{}):".format(
        user_data.get("name"), len(completed_data), len(todos)))
    [print("\t {}".formar(c)) for c in completed_data]
