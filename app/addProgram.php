<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Program</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/css/addProgram.css">
</head>
<body>
    <header>
        <div class="addProgram">Add Program</div>
    </header>

    <div class="container">
        <form>
            <!-- /**
            *! Program ID input here
            **/-->

            <label for="progId">Program ID</label><br>
            <input type="text" id="progId" onkeyup="validateProgramId()">
            <span id="programId_error"></span>
            <br><br>

             <!-- /**
            *! Program Name input here
            **/-->
            <label for="progName">Program Name</label>
            <input type="text" id="progName" onkeyup="validateProgramName()">
            <span id="programName_error"></span>
            <br><br>

             <!-- /**
            *! Save button here
            **/-->
            <input class="btn-save" type="submit" value="Save" onclick="return validateSave()" >

             <!-- /**
            *! Cancel button input here
            **/-->
            <input class="btn-cancel" id="cancel" type="submit" value="Cancel">
            <br>
            <span id="save_error"></span>
        </form>
    </div>
    <script type="text/javascript" src="../script.js"></script>
</body>
</html>