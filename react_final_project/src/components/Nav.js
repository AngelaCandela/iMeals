import { useHistory } from "react-router-dom";
import "../styles/Nav.css";
import logo from "../images/white_logo_transparent_background.png";


export default function Nav() {
    
    const token = localStorage.getItem('token');

    let history = useHistory();

    function redirect(e) {
        e.preventDefault();
        history.push(e.target.id);
    };

    function handleLogout(e) {
        e.preventDefault();
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        localStorage.removeItem('user_first_name');
        history.push("/");
    };

    if(token) {
        return (
            <nav className="main-nav">
                <a className="brand" href="#" id="/" onClick={redirect}><img src={logo} alt="logo"/></a>
                <ul>
                    <li><a href="#" id="/generator" onClick={redirect}>Home</a></li>
                    <li><a href="#" id="/my-plans" onClick={redirect}>My Plans</a></li>
                    <li><a href="#" onClick={handleLogout}>Log out</a></li>
                </ul>                
            </nav>
        )
    }else {
        return (
            <nav className="main-nav">
                <a className="brand" href="#" id="/" onClick={redirect}><img src={logo} alt="logo"/></a>
                <ul>
                    <li><a href="#" id="/generator" onClick={redirect}>Home</a></li>                
                    <li><a href="#" id="/login" onClick={redirect}>Login</a></li>
                    <li><a href="#" id="/signup" onClick={redirect}>Sign Up</a></li>
                </ul>                
            </nav>
        )
    }
    
}