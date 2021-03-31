import { useHistory } from "react-router-dom";
import "../styles/HomeNav.css";

export default function HomeNav() {

    let history = useHistory();

    function redirect(e) {
        e.preventDefault();
        history.push(e.target.id);
    };
    
    return (
        <nav className="home-nav">
            <a className="brand" href="#">iMeals</a>
            <ul>
                <li><a href="#" id="/generator" onClick={redirect}>Home</a></li>
                <li><a href="#" id="/login" onClick={redirect}>Login</a></li>
                <li><a href="#" id="/signup" onClick={redirect}>Sign Up</a></li>
            </ul>                
        </nav>
    )
}
