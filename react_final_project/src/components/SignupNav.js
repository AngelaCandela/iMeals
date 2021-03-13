import "../styles/AuthNav.css";
import { useHistory } from "react-router-dom";

export default function SignupNav() {
    
    let history = useHistory();

    function redirect(e) {
        e.preventDefault();
        history.push(e.target.id);
    };

    return (
        <nav className="auth-nav">                    
            <a href="" id="/" onClick={redirect}>Home</a>
            <div className="d-flex">
                <p className="mb-0 mr-4">Already a member?</p>
                <a href="" id="/login" onClick={redirect}>Sign in</a>
            </div>
        </nav>
    )
}
