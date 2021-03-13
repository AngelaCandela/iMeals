import { useHistory } from "react-router-dom";
import "../styles/Nav.css";


export default function Nav() {

    let history = useHistory();

    function redirect(e) {
        e.preventDefault();
        history.push(e.target.id);
    };

    return (
        <nav className="main-nav">
            <a className="brand" href="#">iMeals</a>
            <ul>
                <li><a href="#" id="/" onClick={redirect}>Home</a></li>                
                <li><a href="#" id="/login" onClick={redirect}>Login</a></li>
                <li><a href="#" id="/signup" onClick={redirect}>Sign Up</a></li>
                <li><a href="#" id="/user/mealplans" onClick={redirect}>My Plans</a></li>
                <li><a href="#" id="/user/settings" onClick={redirect}>Settings</a></li>
            </ul>                
        </nav>
    )
}
