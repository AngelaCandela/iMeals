import "../styles/UserMealPlansList.css";
import { useState, useEffect } from "react";
import MealPlanRecipes from "./MealPlanRecipes";
import ShoppingList, { ComponentToPrint } from "./ShoppingList";

import { useRef } from 'react';
import { useReactToPrint } from 'react-to-print';

export default function UserMealPlansList() {

    const token = localStorage.getItem('token');
    const [mealplans, setMealplans] = useState([]);
    const [disabled, setDisabled] = useState(true);
    const [ingredients, setIngredients] = useState([]);

    const componentRef = useRef();
    const handlePrint = useReactToPrint({
        content: () => componentRef.current,
    });

    useEffect(() => {
        showUserMealplans();        
    }, [])

    function showUserMealplans(){
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
    }

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
        setIngredients(ingredients);
        setDisabled(false);
    }

    function reformatDate(dateStr){
        let dArr = dateStr.split("-");
        return dArr[2]+ "-" +dArr[1]+ "-" +dArr[0];
    }

    function deleteMealplan(event){
        event.preventDefault();
        const id = event.target.id;
        console.log(id);
        fetch('http://localhost:8000/delete-mealplan', {
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
            console.log(response);
            alert('Mealplan deleted successfully!');
            showUserMealplans();
            })
        .catch(error => console.log('Error: ', error));
    }    

    return (
        <>
            {mealplans.length !== 0 &&
                <>
                <div className="mealplans-list">
                    {mealplans.map((mealplan, index) => {
                        return  <div className="mealplan-card" key={mealplan.id}>
                                    <div>
                                        <div className="mealplan-header mb-4">
                                            <h3>{localStorage.getItem('user_first_name')}'s Meal Plan {index+1}</h3>
                                            <p>{reformatDate(mealplan.date.slice(0,10))}</p>
                                        </div>
                                        <MealPlanRecipes title="Breakfasts" recipes={mealplan.breakfasts}/>
                                        <MealPlanRecipes title="Main meals" recipes={mealplan.mainMeals}/>
                                    </div>
                                    <div className="mealplan-buttons">
                                        <button type="button" className="mealplan-btn" id={mealplan.id} onClick={getShoppingList}>Shopping List</button>
                                        <button type="button" className="mealplan-btn mealplan-delete-btn" id={mealplan.id} onClick={(e) => {if (window.confirm("Are you sure you want to delete this mealplan?")) deleteMealplan(e);} }>Delete</button>
                                    </div>
                                </div>
                    })
                    }
                </div>
                <ShoppingList disabled={disabled} setDisabled={setDisabled} ingredients={ingredients} handlePrint={handlePrint}/>
                <div style={{ display: "none" }}>
                    <ComponentToPrint ref={componentRef} ingredients={ingredients}/>
                </div>
                </>
            }
            {mealplans.length === 0 && 
                <div className="mealplan-card m-auto text-center">You haven't saved any mealplans yet.</div>            
            }
        </>
            
    )
}
