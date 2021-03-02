import "../styles/SignUp.css";
import { useHistory } from "react-router-dom";

export default function SignUp() {

    let history = useHistory();

    function HomeButton(e) {
        e.preventDefault();
        history.push("/");
    };

    function SignInButton(e) {
        e.preventDefault();
        history.push("/login");
    };

    return (
        <div className="d-flex">
            <section className="auth-sidebar signup-sidebar"></section>
            <section className="content">
                <nav className="auth-nav">                    
                    <a href="" onClick={HomeButton}>Home</a>
                    <div className="d-flex">
                        <p className="mb-0 mr-4">Already a member?</p>
                        <a href="" onClick={SignInButton}>Sign in</a>
                    </div>
                </nav>                
                <div className="main">                                                           
                    <div className="auth-content">
                        <h2>Sign up</h2>                       
                        <form action="#" className="auth-form">
                            <div className="form-field-group">
                                <div className="form-field">
                                    <fieldset>
                                        <label htmlFor="user_first_name">First name</label>
                                        <input type="text" className="text-input" id="user_first_name" name="userFirstNameInput"/>
                                    </fieldset>
                                </div>
                                <div className="form-field">
                                    <fieldset>
                                        <label htmlFor="user_last_name">Last name</label>
                                        <input type="text" className="text-input" id="user_last_name" name="userLastNameInput"/>
                                    </fieldset>
                                </div>
                            </div>
                            <div className="form-field">
                                <fieldset>
                                    <label htmlFor="user_email">Email</label>
                                    <input type="email" className="text-input" id="user_email" name="userEmailInput"/>
                                </fieldset>
                            </div>
                            <div className="form-field">
                                <fieldset>
                                    <label htmlFor="user_password">Password</label>
                                    <input type="password" className="text-input" id="user_password" name="userPasswordInput"/>
                                </fieldset>
                            </div>
                            <button type="submit" className="form-btn">Create Account</button>                                                        
                        </form>
                    </div>
                </div>
            </section>
        </div>
    )
}
