import "../styles/GeneratorForm.css";
import meaticon from "../images/meat.png";
import veggieicon from "../images/vegetarian.png";
import veganicon from "../images/vegan.png";
import glutenfreeicon from "../images/gluten-free.png";
import dairyfreeicon from "../images/dairy-free.png";

import { useState, useEffect } from "react";

export default function GeneratorForm() {

    const [mainMealsNum, setMainMealsNum] = useState(1);
    const [breakfastsNum, setBreakfastsNum] = useState(1);
    const [breakfasts, setBreakfasts] = useState([]);
    const [mainMeals, setMainMeals] = useState([]);

    let dietSet = {
        anything: false,
        vegetarian: false,
        vegan: false,
        glutenfree: false,
        dairyfree: false,
    }

    const [diets, setDiets] = useState(dietSet); 

    const handleMainMealsNum = (event) => {
        event.preventDefault();
        setMainMealsNum(event.target.value);
    }

    const handleBreakfastsNum = (event) => {
        event.preventDefault();
        setBreakfastsNum(event.target.value);
    }
    
    const handleAnything = () => {
        dietSet.anything = !dietSet.anything;        
    }
    const handleVegetarian = () => {
        dietSet.vegetarian = !dietSet.vegetarian;
    }
    const handleVegan = () => {
        dietSet.vegan = !dietSet.vegan;
    }
    const handleGlutenfree = () => {
        dietSet.glutenfree = !dietSet.glutenfree;
    }
    const handleDairyfree = () => {
        dietSet.dairyfree = !dietSet.dairyfree;
        console.log(mainMeals);
        console.log(breakfasts); 
    }

    if (diets) dietSet = diets
    function handleSubmit(event) {
        event.preventDefault();
        console.log("======", diets);
        setDiets(dietSet) 
        fetch('http://localhost:8000/find-recipes-for-new-mp', {
            method: 'POST',
            mode: 'cors',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({diets: dietSet, mainMealsNum: mainMealsNum, breakfastsNum: breakfastsNum}),
        })
        .then(response => {
            if(!response.ok)
                throw new Error(`Something went wrong: ${response.statusText}`);
            return response.json();
        })
        .then(response => {
            console.log(response);
            // setMainMeals(prevMainMeals => [...prevMainMeals, response[0]]); 
            // setBreakfasts(prevBreakfasts => [...prevBreakfasts, response[1]]); 
            setMainMeals(response[0]); 
            setBreakfasts(response[1]);                     
        })
        .catch(error => {
            console.log('Error: ', error);
            }
        );
    }

    

    return (
        <form action="" className="generator-form" onSubmit={handleSubmit}>
            <div className="form-filters">
                <div className="meals-filters">
                    <label htmlFor="MainMealsNumber">Number of Main Meals:</label>
                    <select name="MainMealsNumber" id="MainMealsNumber" onChange={handleMainMealsNum} className="form-select form-select-sm mb-3" aria-label=".form-select-sm">
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                        <option value="4">Four</option>
                    </select>
                    <label htmlFor="BreakfastsNumber">Number of Breakfasts:</label>
                    <select name="BreakfastsNumber" id="BreakfastsNumber" onChange={handleBreakfastsNum} className="form-select">
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                        <option value="4">Four</option>
                    </select>
                </div>
                <div className="diet-filters">
                    <button type="button" className="diet" id="anything" onClick={handleAnything}><img src={meaticon} alt="anything"/>Anything</button>
                    <button type="button" className="diet" id="vegetarian" onClick={handleVegetarian}><img src={veggieicon} alt="vegan"/>Vegetarian</button>
                    <button type="button" className="diet" id="vegan" onClick={handleVegan}><img src={veganicon} alt="vegetarian"/>Vegan</button>
                    <button type="button" className="diet" id="gluten-free" onClick={handleGlutenfree}><img src={glutenfreeicon} alt="gluten-free"/>Gluten-free</button>
                    <button type="button" className="diet" id="dairy-free" onClick={handleDairyfree}><img src={dairyfreeicon} alt="dairy-free"/>Dairy-free</button>
                </div>
            </div>
            <button type="submit" className="generator-form-btn">Generate</button>
        </form>
    )
}
