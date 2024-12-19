import csv

csv_filename = "/home/cameron/workspaces/CPSC-332-Database-Project/datasets/linkedin-job-postings/2023-24-job-dataset.csv"
output_filename = "result.txt"

rows = []
soc_list = []

with open(csv_filename, 'r', encoding='utf8') as csv_file:

    csvreader = csv.reader(csv_file)

    next(csvreader) # skip headings row

    for row in csvreader:
        rows.append(row)

for row in rows:
    column: str = row[4]

    print(column)

    # soc_list.append(soc_column[1:8]) # Get soc from str


# with open(output_filename, 'x', encoding='utf8') as output_file:
#     for line in soc_list:
#         output_file.write(line + '\n')