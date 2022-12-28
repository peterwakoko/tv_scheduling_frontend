<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/css/adminIndex.css">
</head>
<body>
    <header>
        <div class="tv_system">Television Scheduling System</div> 
        <div class="logout"><a href="staffLogin.php"><i class="fa-solid fa-arrow-right-from-bracket"></i>Log Out</a></div> 
</header>

<div class="container-1">
    <button type="button">Add User</button>
    <button type="button" id="button2">Add Program</button>
    <button type="button" id="button3">Edit User Data</button>
</div>


<h3>User Activity Log</h3>

<div class="container-2">
    <table>
        <thead>
          <tr class="headings">
            <th>Username</th>
            <th>Password</th>
            <th>Last Login</th>
            <th>Staff Id</th>
    
          </tr>
        </thead>
        <tbody>
          <tr>
            <td  align="center">sensyOnen</td>
            <td  align="center">*********</td>
            <td  align="center">01/09/2022 18:00:00</td>
            <td  align="center">S001</td>
          </tr>
          <tr>
            <td align="center">manziHilbert</td>
            <td align="center">*********</td>
            <td align="center">01/09/2022 20:00:00</td>
            <td align="center">S015</td>
          </tr>
          <tr>
            <td align="center">peterWakoko</td>
            <td align="center">*********</td>
            <td align="center">01/09/2022 22:00:00</td>
            <td align="center">S005</td>
          </tr>
          <tr>
            <td align="center">malomoApollo</td>
            <td align="center">*********</td>
            <td align="center">01/09/2022 01:00:00</td>
            <td align="center">S054</td>
          </tr>
        <div>
        </div>
        </tbody>
      </table>
</div>
</body>
</html>