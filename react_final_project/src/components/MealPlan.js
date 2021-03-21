import "../styles/MealPlan.css";
import { useContext, useEffect } from "react";
import { GlobalContext } from "../App";
import { MPContext } from "./MPGeneratorMainContainer";
import SelectedRecipes from "./SelectedRecipes";

export default function MealPlan() {    

    const { diets, mainMealsNum, breakfastsNum, breakfasts, setBreakfasts, mainMeals, setMainMeals, disabled, setDisabled } = useContext(MPContext);
    const { token, setToken } = useContext(GlobalContext);
    useEffect(() => {
        console.log("Breakfasts recipes:", breakfasts);
        console.log("Main meals recipes:", mainMeals);
        
    }, [breakfasts, mainMeals])

    function regenerate(event) {
        event.preventDefault(); 
        fetch('http://localhost:8000/find-recipes-for-new-mp', {
            method: 'POST',
            mode: 'cors',
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
        .catch(error => console.log('Error: ', error)
        );
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
            if(!response.ok)
                throw new Error(`Something went wrong: ${response.statusText}`);
            return response.json();
        })
        .then(response => console.log(response)
        )
        .catch(error => console.log('Error: ', error)
        );
    }
    return (
        <div className="mealplan" disabled={disabled}>            
            <SelectedRecipes title="Breakfasts" recipes={breakfasts}/>
            <SelectedRecipes title="Main meals" recipes={mainMeals}/>
            <div className="mealplan-buttons">
                <button type="submit" className="generator-form-btn" onClick={regenerate}>Regenerate</button>
                <button type="button" className="generator-form-btn">Shopping List</button>
                <button type="button" className="generator-form-btn" onClick={saveMealplan}>Save</button>
                <button type="button" className="generator-form-btn" onClick={() => setDisabled(true)}>Close</button>             
            </div>
        </div>
    )
}
