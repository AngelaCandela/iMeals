import "../styles/AuthNav.css";
import { useHistory } from "react-router-dom";

export default function LoginNav() {

    let history = useHistory();

    function redirect(e) {
        e.preventDefault();
        history.push(e.target.id);
    };

    return (
        <nav className="auth-nav">                    
        <a href="" id="/" onClick={redirect}>Home</a>
        <div className="d-flex">
            <p className="mb-0 mr-4">Not a member?</p>
            <a href="" id="/signup" onClick={redirect}>Sign up now</a>
        </div>
    </nav>
)
}
