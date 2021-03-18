import { useState } from "react";
import { useHistory } from "react-router-dom";
import "../styles/AuthContent.css";

export default function SignupForm() {

    let history = useHistory();

    const [firstName, setFirstName] = useState("");
    const [lastName, setLastName] = useState("");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [disabled, setDisabled] = useState(true);

    const handleSignup = (event) => {
        event.preventDefault();

        const formData = new FormData();
        formData.append('userFirstNameInput', firstName);
        formData.append('userLastNameInput', lastName);
        formData.append('userEmailInput', email);
        formData.append('userPasswordInput', password);

        console.log(formData);

        fetch('http://localhost:8000/signup', {
            method: 'POST',
            mode: 'cors',
            body: formData,
        })
        .then(response => {
            if(!response.ok)
                throw new Error(`Something went wrong: ${response.statusText}`);
            console.log(response.statusText);
            return response.json();
        })
        .then(response => {
            console.log(response);

            fetch('http://localhost:8000/login', {
                method: 'POST',
                mode: 'cors',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({username: email, password: password}),
            })
            .then(response => {
                if(!response.ok)
                    throw new Error(`Something went wrong: ${response.statusText}`);
                console.log(response.statusText);
                return response.json();
            })
            .then(response => {
                console.log('You are logged in! ', response);
                localStorage.setItem('token', response.token);

                history.push("/generator");
            })
            .catch(error => console.log('Error: ', error)
            );
        })
        .catch(error => {
            console.log('Error: ', error);
            setDisabled(!disabled);
            }
        );
    };

    const handleFirstName = (event) => {
        setFirstName(event.target.value);
    }

    const handleLastName = (event) => {
        setLastName(event.target.value);
    }

    const handleEmail = (event) => {
        setEmail(event.target.value);
    }

    const handlePassword = (event) => {
        setPassword(event.target.value);
    }

    return (
        <div className="auth-content">
            <h2>Sign up</h2>                       
            <form className="auth-form" onSubmit={handleSignup}>
                <div className="form-field-group">
                    <div className="form-field">
                        <fieldset>
                            <label htmlFor="user_first_name">First name</label>
                            <input type="text" className="text-input" id="user_first_name" name="userFirstNameInput" value={firstName} onChange={handleFirstName}/>
                        </fieldset>
                    </div>
                    <div className="form-field">
                        <fieldset>
                            <label htmlFor="user_last_name">Last name</label>
                            <input type="text" className="text-input" id="user_last_name" name="userLastNameInput" value={lastName} onChange={handleLastName}/>
                        </fieldset>
                    </div>
                </div>
                <div className="form-field">
                    <fieldset>
                        <label htmlFor="user_email">Email</label>
                        <input type="email" className="text-input" id="user_email" name="userEmailInput" value={email} onChange={handleEmail}/>
                    </fieldset>
                </div>
                <div className="form-field">
                    <fieldset>
                        <label htmlFor="user_password">Password</label>
                        <input type="password" className="text-input" id="user_password" name="userPasswordInput" value={password} onChange={handlePassword}/>
                    </fieldset>
                </div>
                <span disabled={disabled} className="error-msg">The email address entered is already being used. Please select another one or login.</span>
                <button type="submit" className="form-btn">Create Account</button>                                                        
            </form>
        </div>
    )
}
