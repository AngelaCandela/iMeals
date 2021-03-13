import "../styles/GeneratorForm.css";
import meaticon from "../images/meat.png";
import veggieicon from "../images/vegetarian.png";
import veganicon from "../images/vegan.png";
import glutenfreeicon from "../images/gluten-free.png";
import dairyfreeicon from "../images/dairy-free.png";

import { useState } from "react";

export default function GeneratorForm() {

    const [diet, setDiet] = useState("");
    const [mainMealsNum, setMainMealsNum] = useState(1);
    const [breakfastsNum, setBreakfastsNum] = useState(1);

    const handleMainMealsNum = (event) => {
        event.preventDefault();
        setMainMealsNum(event.target.value);
    }

    const handleBreakfastsNum = (event) => {
        event.preventDefault();
        setBreakfastsNum(event.target.value);
    }
    
    const handleAnything = (event) => {
        event.preventDefault();
        setDiet("anything");
    }
    const handleVegetarian = (event) => {
        event.preventDefault();
        setDiet("vegetarian");   
    }
    const handleVegan = (event) => {
        event.preventDefault();
        setDiet("vegan");
    }
    const handleGlutenfree = (event) => {
        event.preventDefault();
        setDiet("gluten-free");
    }
    const handleDairyfree = (event) => {
        event.preventDefault();
        setDiet("dairy-free");
    }

    return (
        <form action="" className="generator-form">
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
                    <button className="diet" id="anything" onClick={handleAnything}><img src={meaticon} alt="anything"/>Anything</button>
                    <button className="diet" id="vegetarian" onClick={handleVegetarian}><img src={veggieicon} alt="vegan"/>Vegetarian</button>
                    <button className="diet" id="vegan" onClick={handleVegan}><img src={veganicon} alt="vegetarian"/>Vegan</button>
                    <button className="diet" id="gluten-free" onClick={handleGlutenfree}><img src={glutenfreeicon} alt="gluten-free"/>Gluten-free</button>
                    <button className="diet" id="dairy-free" onClick={handleDairyfree}><img src={dairyfreeicon} alt="dairy-free"/>Dairy-free</button>
                </div>
            </div>
            <button type="submit" className="generator-form-btn">Generate</button>
        </form>
    )
}
