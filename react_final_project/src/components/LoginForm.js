import { useState, useContext } from "react";
import { GlobalContext } from "../App";
import { useHistory } from "react-router-dom";
import "../styles/AuthContent.css";

export default function LoginForm() {

    const { setToken } = useContext(GlobalContext);
    
    let history = useHistory();

    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");  

    const handleLogin = (event) => {
        event.preventDefault();

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
            setToken(response.token);

            history.push("/generator");
        })
        .catch(error => {
            console.log('Error: ', error);
            document.getElementById('error-msg').classList.remove('hidden');
            }
        );
    };

    const handleEmail = (event) => {
        setEmail(event.target.value);
    }

    const handlePassword = (event) => {
        setPassword(event.target.value);
    }

    return (
        <div className="auth-content">
            <h2>Sign in</h2>                       
            <form className="auth-form" onSubmit={handleLogin}>                            
                <div className="form-field">
                    <fieldset>
                        <label htmlFor="user_email">Email address</label>
                        <input type="email" className="text-input" id="user_email" name="userEmailInput" value={email} onChange={handleEmail}/>
                    </fieldset>
                </div>
                <div className="form-field">
                    <fieldset>
                        <label htmlFor="user_password">Password</label>
                        <input type="password" className="text-input" id="user_password" name="userPasswordInput" value={password} onChange={handlePassword}/>
                    </fieldset>
                </div>
                <span id="error-msg" className="error-msg hidden">Invalid email or password</span>
                <button type="submit" className="form-btn">Sign In</button>                                                        
            </form>
        </div>
    )
}
