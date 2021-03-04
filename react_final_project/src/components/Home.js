import "../styles/Home.css";
import 'bootstrap/dist/css/bootstrap.min.css';
import { useHistory } from "react-router-dom";
import logo from "../images/carrot-icon.png";

export default function Home() {

    let history = useHistory();

    function LogInButton(e) {
        e.preventDefault();
        history.push("/login");
    };

    function SignUpButton(e) {
        e.preventDefault();
        history.push("/signup");
    };

    return (
        <div className="main-container">
            <nav className="home-nav">
                <a className="brand" href="#">iMeals</a>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#" onClick={LogInButton}>Login</a></li>
                    <li><a href="#" onClick={SignUpButton}>Sign Up</a></li>
                </ul>                
            </nav>
            <div className="top-container">                
                <div className="top-left-container"></div>
                <div className="top-right-container">
                    <div>
                        <h2>Welcome to iMeals!</h2>
                        <h4>Tasty and delicious recipes for everyone's taste.</h4>
                        <h4>Why wait? Get your first meal plan!</h4>
                    </div>
                    <button>Get started</button>
                </div>
            </div>
            <div className="bottom-container">
                <div className="card text-center">
                    <div className="card-img-top d-flex justify-content-center">
                        <div className="circle icon-1"></div>
                    </div>
                    <div className="card-body">
                        <h5 className="card-title">Title</h5>
                        <p className="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam aspernatur quisquam repudiandae rerum sit tempora, deleniti distinctio obcaecati autem vitae.</p>
                    </div>
                </div>
                <div className="card text-center">
                    <div className="card-img-top d-flex justify-content-center">
                        <div className="circle icon-2"></div>
                    </div>
                    <div className="card-body">
                        <h5 className="card-title">Title</h5>
                        <p className="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam aspernatur quisquam repudiandae rerum sit tempora, deleniti distinctio obcaecati autem vitae.</p>
                    </div>
                </div>
                <div className="card text-center">
                    <div className="card-img-top d-flex justify-content-center">
                        <div className="circle icon-3"></div>
                    </div>
                    <div className="card-body">
                        <h5 className="card-title">Title</h5>
                        <p className="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam aspernatur quisquam repudiandae rerum sit tempora, deleniti distinctio obcaecati autem vitae.</p>
                    </div>
                </div>
            </div>
            <footer className="d-flex">
                <p>iMeals&copy;</p>
            </footer>            
        </div>
    )
}
