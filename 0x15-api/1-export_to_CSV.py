#!/usr/bin/python3
"""Task #0, extendt this Python script to
export data in the CSV format."""

if __name__ == "__main__":
    import csv
    import json
    import requests
    import sys

    _id = str(sys.argv[1])
    endpoint = f"https://jsonplaceholder.typicode.com/users/{_id}?_embed=todos"
    response = requests.get(endpoint)
    resp = response.text
    data = json.loads(resp)
    name = str(data.get('name'))
    allTasks = data.get('todos')
    csv_filename = f"{_id}.csv"

    with open(csv_filename, mode='w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for task in allTasks:
            task_completed_status = str(task.get('completed'))
            task_title = task.get('title')
            csv_writer.writerow([_id, name,
                                task_completed_status, task_title])
