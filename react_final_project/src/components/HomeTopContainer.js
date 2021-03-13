import { useHistory } from "react-router-dom";
import "../styles/HomeTopContainer.css";

export default function HomeTopContainer() {

    let history = useHistory();

    function redirect(e) {
        e.preventDefault();
        history.push(e.target.id);
    };

    return (
        <div className="home-top-container">                
            <div className="home-top-left-container"></div>
            <div className="home-top-right-container">
                <div>
                    <h2>Welcome to iMeals!</h2>
                    <h4>Tasty and delicious recipes for everyone's taste.</h4>
                    <h4>Why wait? Get your first meal plan!</h4>
                </div>
                <button id="/generator" onClick={redirect}>Get started</button>
            </div>
        </div>
    )
}
