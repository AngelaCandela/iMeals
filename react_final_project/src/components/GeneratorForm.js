import "../styles/GeneratorForm.css";
import meaticon from "../images/meat.png";
import veggieicon from "../images/vegetarian.png";
import veganicon from "../images/vegan.png";
import glutenfreeicon from "../images/gluten-free.png";
import dairyfreeicon from "../images/dairy-free.png";

import { useContext } from "react";
import { MPContext } from "./MPGeneratorMainContainer";

export default function GeneratorForm() {

    let dietSet = {
        anything: false,
        vegetarian: false,
        vegan: false,
        glutenfree: false,
        dairyfree: false,
    }

    const { diets, setDiets, breakfastsNum, setBreakfastsNum, mainMealsNum, setMainMealsNum, setBreakfasts, setMainMeals, disabled, setDisabled } = useContext(MPContext);
    
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
        document.getElementById('anything').classList.toggle('clicked');    
    }

    const handleVegetarian = () => {
        dietSet.vegetarian = !dietSet.vegetarian;
        document.getElementById('vegetarian').classList.toggle('clicked');
    }

    const handleVegan = () => {
        dietSet.vegan = !dietSet.vegan;
        document.getElementById('vegan').classList.toggle('clicked');
    }

    const handleGlutenfree = () => {
        dietSet.glutenfree = !dietSet.glutenfree;
        document.getElementById('gluten-free').classList.toggle('clicked');
    }

    const handleDairyfree = () => {
        dietSet.dairyfree = !dietSet.dairyfree;
        document.getElementById('dairy-free').classList.toggle('clicked');
    }

    if (diets) dietSet = diets
    function handleSubmit(event) {
        event.preventDefault();
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
            setBreakfasts(response[0]);
            setMainMeals(response[1]);            
            setDisabled(false);                   
        })
        .catch(error => console.log('Error: ', error)
        );
    }    

    return (
        <form action="" className="generator-form" onSubmit={handleSubmit}>
            <div className="form-filters">
                <div className="meals-filters">
                    <label htmlFor="BreakfastsNumber">Number of Breakfasts:</label>
                    <select name="BreakfastsNumber" id="BreakfastsNumber" onChange={handleBreakfastsNum} className="form-select mb-3">
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                        <option value="4">Four</option>
                    </select>
                    <label htmlFor="MainMealsNumber">Number of Main Meals:</label>
                    <select name="MainMealsNumber" id="MainMealsNumber" onChange={handleMainMealsNum} className="form-select">
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                        <option value="4">Four</option>
                        <option value="5">Five</option>
                        <option value="6">Six</option>
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
