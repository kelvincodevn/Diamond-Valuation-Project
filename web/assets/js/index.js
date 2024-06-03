const form = document.getElementById('form');
const username = document.getElementById('username');
const email = document.getElementById('email');
const password = document.getElementById('password');
const password2 = document.getElementById('password2');
const firstname = document.getElementById('firstname');
const lastname = document.getElementById('lastname');
const phonenumber = document.getElementById('phonenumber');

form.addEventListener('submit', e => {
    e.preventDefault();
    validateInputs();
});

const setError = (element, message) => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error');

    errorDisplay.innerText = message;
    inputControl.classList.add('error');
    inputControl.classList.remove('success')
}

const setSuccess = element => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error');

    errorDisplay.innerText = '';
    inputControl.classList.add('success');
    inputControl.classList.remove('error');
};

const isValidUsername = username => {
    const re = /.*[0-9].*/;
    return re.test(String(username).toLowerCase());
}

const isValidEmail = email => {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

//const isValidPassword = password => {
//    const re = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(\W|_)).{8,}$/;
//    return re.test(String(password).toLowerCase());
//}

const isValidFirstName = firstname => {
    const re = /^([^0-9]*)$/;
    return re.test(String(firstname).toLowerCase());
}

const isValidLastName = lastname => {
    const re = /^([^0-9]*)$/;
    return re.test(String(lastname).toLowerCase());
}

const isValidPhoneNumber = phonenumber => {
    const re = /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/;
    return re.test(String(phonenumber).toLowerCase());
}

const validateInputs = () => {
    const firstnameValue = firstname.value.trim();
    const lastnameValue = lastname.value.trim();
    const phonenumberValue = phonenumber.value.trim();
    const usernameValue = username.value.trim();
    const emailValue = email.value.trim();
    const passwordValue = password.value.trim();
    const password2Value = password2.value.trim();

    if(firstnameValue === '') {
        setError(firstname, 'Firstname is required');
    } else if(firstnameValue.length < 4) {
        setError(firstname, 'Firstname should be at least 4 characters long');
    } else if(!isValidFirstName(firstnameValue)) {
        setError(firstname, 'Firstname should contain only letter characters');
    } else {
        setSuccess(firstname);
    }
    
    if(lastnameValue === '') {
        setError(lastname, 'Lastname is required');
    } else if(lastnameValue.length < 4) {
        setError(lastname, 'Lastname should be at least 4 characters long');
    } else if(!isValidLastName(lastnameValue)) {
        setError(lastname, 'Lastname should contain only letter characters');
    } else {
        setSuccess(lastname);
    }

    if(phonenumberValue === '') {
        setError(phonenumber, 'Phonenumber is required');
    } else if(phonenumberValue.length < 10) {
        setError(phonenumber, 'Phonenumber should be at least 10 digits long');
    } else if(!isValidPhoneNumber(phonenumberValue)) {
        setError(phonenumber, 'Phonenumber should start with 03, 05, 07 or 08');
    } else {
        setSuccess(phonenumber);
    }
    
    if(usernameValue === '') {
        setError(username, 'Username is required');
    } else if(usernameValue.length < 6) {
        setError(username, 'Username should be at least 6 characters long');
    } else if(!isValidUsername(usernameValue)) {
        setError(username, 'Username should container a number');
    } else {
        setSuccess(username);
    }

    if(emailValue === '') {
        setError(email, 'Email is required');
    } else if (!isValidEmail(emailValue)) {
        setError(email, 'Please enter a valid email');
    } else {
        setSuccess(email);
    }

    if(passwordValue === '') {
        setError(password, 'Password is required');
    } else if (passwordValue.length < 8 ) {
        setError(password, 'Password must be at least 8 character.')
//    } else if (!isValidPassword(passwordValue)) {
//        setError(password, 'Password must contain at least a symbol, upper and lower case letters and a number');
    } else {
        setSuccess(password);
    }

    if(password2Value === '') {
        setError(password2, 'Please confirm your password');
    } else if (password2Value !== passwordValue) {
        setError(password2, "Password and Password Confirm should match");
    } else {
        setSuccess(password2);
    }

};
