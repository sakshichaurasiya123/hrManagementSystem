/* Login Form Validation */
function checkUserName() {
    var userName = document.getElementById('username');    
    var message = "userName Must Be Between 5 & 50 Character";
    myFunction(userName, message);
}

 

function checkPassword() {
    var password = document.getElementById('password');
    var message = "Password Must Be Between 5 & 50 Character";
    myFunction(password, message);
}

 

function myFunction(field, message) {
    var mnlen = 5;
    var mxlen = 50;

 

    if (field.value.length < mnlen || field.value.length > mxlen) {
        showAlert(message);
        giveFocus(field.name);        
    } else {        
        setTimeout(function() {
            $("#alertdiv").remove();
        }, 0);
    }
}

 

function showLoginButton() {

 

    $('#button')
            .append(
                    '<input id="buttondiv" class="pt-0 pr-3 pl-3 mt-3" type="submit" name="login" value="Login">')

 

}

 

/* Login Form Validation */

 

/* Update Form Validation */

 

function checkName() {
    var name = document.getElementById('employeename');
    var message = "Max 100 Character Allowed";
    updateFormValidation(name, message, 100);
}

 

function checkLocation() {
    var location = document.getElementById('location');
    var message = "Max 500 Character Allowed";
    updateFormValidation(location, message, 500);
}

 

function checkEmail() {
    var email = document.getElementById('email');
    var mailFormat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;    
    if (email.value.match(mailFormat)) {
        var message = "Max 100 Character Allowed";
        updateFormValidation(email, message, 100);
    } else {
        showEmailAlert();
        giveFocus(email.name);
    }
}
function checkDate() {
    var date = document.getElementById('date');
    var message = "Date Format Must Be yyyy-MM-DD";
    var dateFormat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
    if (!(date.value.match(dateFormat))) {           
        showAlert(message);
    }
   
}
 


function updateFormValidation(field, message, mxlen) {    
    if (field.value.length > mxlen) {        
        showAlert(message);
        giveFocus(field.name);
    } else {        
        setTimeout(function() {
            $("#alertdiv").remove();
        }, 0);
    }
}

 

function showAlert(message) {    
    $('#alert').append(
            '<div id="alertdiv" class="alert alert-danger">'
                    + '<a class="close" data-dismiss="alert">X</a>' + '<span>'
                    + message + '</span></div>')
    setTimeout(function() {
        $("#alertdiv").remove();
    }, 3000);

 

}

 

function showEmailAlert() {
    $('#alert').append(
            '<div id="alertdiv" class="alert alert-danger">'
                    + '<a class="close" data-dismiss="alert">X</a><span>Invalid Email</span></div>')
    setTimeout(function() {
        $("#alertdiv").remove();
    }, 3000);

 

}

 

function giveFocus(field) {
      document.getElementById(field).focus();
    }