function printError(elemId, hintMsg) {
    document.getElementById(elemId).innerHTML = hintMsg;
}
function lengthCheck(){
	var name = document.checkForm.name.value;
	var nameErr = true;
	if (name ==""){
		printError("nameErr", "Please enter minimum 3 character");
	}else {
		var regex = /^[a-zA-Z\s]+$/;               
        if((regex.test(name) === false) && (name.length<3)) {
				 alert();
            	printError("nameErr", "Please enter minimum 3 character");
        } else {
            printError("nameErr", "");
            nameErr = false;
    	}
    }
    if(nameErr  == true) {
       return false;
    } else {
        // Creating a string from input data for preview
        var dataPreview = "You've entered the following details: \n" +
                          "Name: " + name + "\n";
        }
        // Display input data in a dialog box before submitting the form
        alert(dataPreview);
}
// Defining a function to validate form 
function validateForm() {
	 
    // Retrieving the values of form elements 
    var name = document.info.stud_name.value
    var email = document.info.stud_email.value;
    var phone = document.info.stud_phone.value;
    var address = document.info.stud_address.value;
    
	// Defining error variables with a default value
    var nameErr = emailErr = phoneErr = addressErr = true;
   
    // Validate name
    if(name == "") {
		printError("nameErr", "Please enter your name");
	} else {
        var regex = /^[a-zA-Z\s]+$/;                
        if(regex.test(name) === false) {
            printError("nameErr", "Please enter a valid name");
        } else {
            printError("nameErr", "");
            nameErr = false;
        }
    }
    
    // Validate email address
    if(email == "") {
        printError("emailErr", "Please enter your email address");
    } else {
        // Regular expression for basic email validation
        var regex = /^\S+@\S+\.\S+$/;
        if(regex.test(email) === false) {
            printError("emailErr", "Please enter a valid email address");
        } else{
            printError("emailErr", "");
            emailErr = false;
        }
    }
    
    // Validate phone number
    if(phone == "") {
        printError("phoneErr", "Please enter your phone number");
    } else {
        var regex = /^[1-9]\d{9}$/;
        if(regex.test(phone) === false) {
            printError("phoneErr", "Please enter a valid 10 digit Phone number");
        } else{
            printError("phoneErr", "");
            phoneErr = false;
        }
    }
    
    // Validate Address
    if(address == "") {
        printError("addressErr", "Please select your Address");
    } else {
        printError("addressErr", "");
        addressErr = false;
    }
    
    // Prevent the form from being submitted if there are any errors
    if((nameErr || emailErr || phoneErr || addressErr) == true) {
       return false;
    } else {
        // Creating a string from input data for preview
        var dataPreview = "You've entered the following details: \n" +
                          "Name: " + name + "\n" +
                          "Email Address: " + email + "\n" +
                          "Phone Number: " + phone + "\n" +
                          "Address: " + address + "\n" ;
        
        }
        // Display input data in a dialog box before submitting the form
        alert(dataPreview);
}