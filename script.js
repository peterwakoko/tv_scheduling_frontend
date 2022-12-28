var programId_error = document.getElementById('programId_error');
var programName_error = document.getElementById('programName_error');
var save_error = document.getElementById('save_error');
var progName = document.getElementById('progName');
var progId = document.getElementById('progId');

function validateProgramId(){
    var programId = document.getElementById('progId').value;

    if (programId.length == 0){
        progId.style.border = '2px solid red';
        programId_error.innerHTML = "Can't be blank!";
        return false;
    }

    else if(!programId.match(/^[A-Za-z][0-9]*/)){
        progId.style.border = '2px solid red';
        programId_error.innerHTML='Start with letter.';
        return false;
    }
else{
    progId.style.border = '2px solid green';
    programId_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
    return true;
}
    

}

function validateProgramName(){
    var programName = document.getElementById('progName').value;

    if (programName.length == 0){
        progName.style.border = '2px solid red';
        programName_error.innerHTML = "Can't be blank!";
        return false;
    }
else{
    progName.style.border = '2px solid green';
    programName_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
    return true;

}
    
}

function validateSave(){
    if (!validateProgramId() || !validateProgramName()){
        save_error.style.display = 'block';
        save_error.innerHTML = "Please fix the error!";
        setTimeout(function(){save_error.style.display = 'none';},3000);
        return false;
    }
}

var username_error = document.getElementById('username-error');
var password_error = document.getElementById('password-error');
var user = document.getElementById('username');
var pass = document.getElementById('password');
var login_error = document.getElementById('login-error');

function validateUsername(){
var username = document.getElementById('username').value;

if(username.length == 0){
    user.style.border = '2px solid red';
    username_error.innerHTML = "Can't be blank!";
    return false;
}

if(username.length >17){
    user.style.border = '2px solid red';
    username_error.innerHTML = "Username is too long!";
    return false;
}

else{
    user.style.border = '2px solid green';
    username_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
    return true;
}
}

function validatePassword(){
    var password = document.getElementById('password').value;

if(password.length == 0){ 
    pass.style.border = '2px solid red';
    password_error.innerHTML = "Can't be blank!";
    return false;
}

else if(password.length <6){
password_error.innerHTML = "Password too short!";
return false;
}

else{
    pass.style.border = '2px solid green';
    password_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
    return true;
}
}

function validateLogin(){
    if (!validateUsername() || !validatePassword()){
        login_error.style.display = 'block';
        login_error.innerHTML = "Access Denied!";
        setTimeout(function(){login_error.style.display = 'none';},3000);
        return false;

    }
}

var staffId_error = document.getElementById('staffId-error');
var fName_error = document.getElementById('fName-error');
var lName_error = document.getElementById('lName-error');
var phone_error = document.getElementById('phone-error');
var user_name_error = document.getElementById('username-error');
var pass_word_error = document.getElementById('password-error');
var saveError = document.getElementById('save-error');
var borderStaffId = document.getElementById('staffId');
var borderFirstName = document.getElementById('fName');
var borderLastName = document.getElementById('lName');
var borderPhone = document.getElementById('phone');
var borderUsername = document.getElementById('username');
var borderPassword = document.getElementById('password');


function validateStaffId(){
var staff_Id = document.getElementById('staffId').value;

if (staff_Id.length == 0){
    borderStaffId.style.border = '2px solid red';
    staffId_error.innerHTML="Can't be blank!";
    return false;
}
else{
    borderStaffId.style.border = '2px solid green';
    staffId_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
    return true;    
}

}

function validate_firstname(){
    var first_name = document.getElementById('fName').value;

    if (first_name.length == 0){
        borderFirstName.style.border = '2px solid red';
        fName_error.innerHTML = "Can't be blank!";
        return false;
    }
    else{
        borderFirstName.style.border = '2px solid green';
        fName_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
        return true;    
    }
}

function validate_lastname(){
    var last_name = document.getElementById('lName').value;

    if (last_name.length == 0){
        borderLastName.style.border = '2px solid red';
        lName_error.innerHTML = "Can't be blank!";
        return false;
    }
    else{
        borderLastName.style.border = '2px solid green';
        lName_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
        return true;    
    }
}

function validate_phone(){
    var telephone = document.getElementById('phone').value;

    if (telephone.length == 0){
        borderPhone.style.border = '2px solid red';
        phone_error.innerHTML = "Can't be blank!";
        return false;
    }
    else{
        borderPhone.style.border = '2px solid green';
        phone_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
        return true;    
    }
}

function validate_username(){
    var username = document.getElementById('username').value;

    if (username.length == 0){
        borderUsername.style.border = '2px solid red';
        user_name_error.innerHTML = "Can't be blank!";
        return false;
    }

    if(username.length >17){
        borderUsername.style.border = '2px solid red';
        user_name_error.innerHTML = "Username is too long!";
        return false;
    }

    else{
        borderUsername.style.border = '2px solid green';
        user_name_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
        return true;    
    }
}

function validate_password(){
    var password = document.getElementById('password').value;

    if (password.length == 0){
        borderPassword.style.border = '2px solid red';
        pass_word_error.innerHTML = "Can't be blank!";
        return false;
    }
    else{
        borderPassword.style.border = '2px solid green';
        pass_word_error.innerHTML='<i class="fa-solid fa-circle-check"></i>';
        return true;    
    }
}

function validate_save(){
    if (!validateStaffId() || !validate_firstname()||!validate_lastname() || !validate_phone()||!validate_username() || !validate_password()){
        saveError.style.display = 'block';
        saveError.innerHTML = "Please fix the error!";
        setTimeout(function(){saveError.style.display = 'none';},3000);
        return false;

    }
}
