import "../styles/UserMealPlansList.css";
import { useState, useEffect } from "react";
import MealPlanRecipes from "./MealPlanRecipes";

export default function UserMealPlansList() {

    const token = localStorage.getItem('token');
    const [mealplans, setMealplans] = useState([]);

    useEffect(() => {
        fetch('http://localhost:8000/my-plans', {
            cors: 'CORS',
            headers: {
                'Authorization': `Bearer ${token}`                
            }
        })
        .then(response => {
            if(!response.ok)                
                throw new Error(`Something went wrong: ${response.statusText}`);                
            return response.json();
        })
        .then(response => {
            console.log(response);
            setMealplans(response);
            }
        )
        .catch(error => console.log('Error: ', error)
        );
        
    }, [])

    function getShoppingList(event){
        event.preventDefault();
        const id = event.target.id;
        console.log(id);
        fetch('http://localhost:8000/shopping-list', {
            method: 'POST',
            cors: 'CORS',
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({mealplanId: id}),
        })
        .then(response => {
            if(!response.ok)                
                throw new Error(`Something went wrong: ${response.statusText}`);                
            return response.json();
        })
        .then(response => {
            //console.log("Backend response", response);
            generateShoppingList(response);
        })
        .catch(error => console.log('Error: ', error)
        );
    }

    function generateShoppingList(mixedIngredients){
        let ingredients = [];
        mixedIngredients.forEach(set => {
            for (let i = 0; i < ingredients.length; i++) {
                if (ingredients[i].ingredient === set.ingredient && ingredients[i].unit === set.unit) {
                    ingredients[i].amount = parseFloat(ingredients[i].amount)+parseFloat(set.amount);
                    return true;
                }                
            }
            ingredients.push(set);         
            
        });
        console.log(ingredients);
    }

    return (
        <div className="mealplans-list">
            {mealplans.map((mealplan) => {
                return  <div className="mealplan-card" key={mealplan.id}>
                            <h2>Your Meal Plan</h2>
                            <MealPlanRecipes title="Breakfasts" recipes={mealplan.breakfasts}/>
                            <MealPlanRecipes title="Main meals" recipes={mealplan.mainMeals}/> 
                            <button type="button" className="btn btn-danger" id={mealplan.id} onClick={getShoppingList}>Shopping List</button>           
                        </div>
            })
            }            
        </div>
    )
}
