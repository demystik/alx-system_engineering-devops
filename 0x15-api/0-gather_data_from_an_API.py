#!/usr/bin/python3
"""This  using this REST API, for a given employee ID,
returns information about his/her TODO list progress."""


if __name__ == "__main__":
    import json
    import requests
    import sys

    id = sys.argv[1]
    endpoint = f"https://jsonplaceholder.typicode.com/users/{id}?_embed=todos"
    response = requests.get(endpoint)
    resp = response.text
    data = json.loads(resp)
    name = data.get('name')
    total = len(data.get('todos'))
    completed = [todo for todo in data.get('todos')
                 if todo.get('completed') is True]
    print(f"Employee {name} is done with tasks({len(completed)}/{total}):")
    for task in completed:
        print(f"\t{task.get('title')}")
