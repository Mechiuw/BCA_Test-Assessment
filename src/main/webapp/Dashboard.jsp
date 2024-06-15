<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Table</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .add-button {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Dynamic Table with Add Functionality</h1>

    <button class="add-button" onclick="addRow()">Add Row</button>

    <table id="dataTable">
        <thead>
            <tr>
                <th>Department</th>
                <th>Student ID</th>
                <th>Marks</th>
                <th>Pass %</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>

    <script>
        function addRow() {
            var table = document.getElementById("dataTable").getElementsByTagName('tbody')[0];
            var newRow = table.insertRow();

            var rowData = {
                department: "New Dep",
                studentId: "S9",
                marks: "85",
                passPercentage: "80"
            };

            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            var cell3 = newRow.insertCell(2);
            var cell4 = newRow.insertCell(3);

            cell1.textContent = rowData.department;
            cell2.textContent = rowData.studentId;
            cell3.textContent = rowData.marks;
            cell4.textContent = rowData.passPercentage;
        }
    </script>
</body>
</html>
