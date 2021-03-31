import "../styles/MealPlan.css";
import { useContext, useEffect } from "react";
import { useHistory } from "react-router-dom";
import { MPContext } from "./MPGeneratorMainContainer";
import SelectedRecipes from "./SelectedRecipes";

export default function MealPlan() {    

    const { diets, mainMealsNum, breakfastsNum, breakfasts, setBreakfasts, mainMeals, setMainMeals, disabled, setDisabled } = useContext(MPContext);
    const token = localStorage.getItem('token');

    let history = useHistory();

    useEffect(() => {
        console.log("Breakfasts recipes:", breakfasts);
        console.log("Main meals recipes:", mainMeals);
        
    }, [breakfasts, mainMeals])

    function regenerate(event) {
        event.preventDefault(); 
        fetch('http://localhost:8000/find-recipes-for-new-mp', {
            method: 'POST',
            cors: 'CORS',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({diets: diets, mainMealsNum: mainMealsNum, breakfastsNum: breakfastsNum}),
        })
        .then(response => {
            if(!response.ok)
                throw new Error(`Something went wrong: ${response.statusText}`);
            return response.json();
        })
        .then(response => {
            setBreakfasts(response[0]);
            setMainMeals(response[1]);                   
        })
        .catch(error => console.log('Error: ', error));
    }

    function saveMealplan(event) {
        event.preventDefault(); 
        fetch('http://localhost:8000/save-mp', {
            method: 'POST',
            cors: 'CORS',
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({breakfasts: breakfasts, mainMeals: mainMeals}),
        })
        .then(response => {
            if(!response.ok){
                alert('You need to be logged in to save this mealplan. Please log in or signup.');
                throw new Error(`Something went wrong: ${response.statusText}`);
            };                
            return response.json();
        })
        .then(response => {
            console.log(response)
            history.push("/my-plans")
        }
        )
        .catch(error => console.log('Error: ', error)
        );
    }
    return (
        <div className="backdrop" disabled={disabled}>
            <div className="mealplan" disabled={disabled}>
                <button type="button" className="close-btn" onClick={() => setDisabled(true)}>X</button>
                <SelectedRecipes title="Breakfasts" recipes={breakfasts}/>
                <SelectedRecipes title="Main meals" recipes={mainMeals}/>
                <div className="mealplan-buttons">
                    <button type="submit" className="mealplan-btn" onClick={regenerate}>Regenerate</button>
                    <button type="button" className="mealplan-btn" onClick={saveMealplan}>Save</button>
                </div>
            </div>
        </div>
)
}
