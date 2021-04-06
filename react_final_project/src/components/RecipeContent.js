import "../styles/RecipeContent.css";
import { useState, useEffect } from "react";

export default function RecipeContent() {

    let id = localStorage.getItem('recipeToShow');
    const [recipe, setRecipe] = useState({});
    let prueba = {};

    useEffect(() => {
        fetch(`http://localhost:8000/recipe/${id}`, {
            method: 'GET',
            cors: 'CORS'
        })
        .then(response => {
            if(!response.ok)
                throw new Error(`Something went wrong: ${response.statusText}`);
            return response.json();
        })
        .then(response => setRecipe(response))
        .catch(error => console.log('Error: ', error));
        
    }, [])

    let diets = "";
    if(recipe.vegetarian === true){
        diets = diets+"vegetarian";
    }            
    if(recipe.vegan === true){
        if(diets === "")
            diets = diets+"vegan";
        else diets = diets+", vegan";
    }            
    if(recipe.glutenfree === true){
        if(diets === "")
            diets = diets+"gluten-free";
        else diets = diets+", gluten-free";
    }            
    if(recipe.dairyfree === true){
        if(diets === "")
            diets = diets+"dairy-free";
        else diets = diets+", dairy-free";
    }
    let newMethod = recipe.method?.split(/STEP\s\d/);

    return (
        <>
        {
            recipe.id &&
       
        <div className="recipe-content">
            <h1>{recipe.name}</h1>
            <div className="recipe-top-info">
                <img className="recipe-img" src={'http://localhost:8000/recipes/'+recipe.img} alt="img"/>
                <div className="recipe-details">
                    <h4><strong>Recipe details: </strong></h4>
                    <hr/>
                    <p><strong>Prep: </strong>{recipe.prepTime} minutes</p>
                    <p><strong>Serves: </strong>1 person</p>
                    <p><strong>Suitable for: </strong>{diets}</p>
                </div>
            </div>
            <h4><strong>Ingredients: </strong></h4>
            <hr/>
            <div className="ingredients-grid">
                {recipe.ingredients.map((ingredient, index) => {
                    return  <p key={index}><strong>{ingredient.ingredient}</strong>: {ingredient.amount} {ingredient.unit}</p>
                    })
                }
            </div>
            <h4><strong>Method: </strong></h4>
            <hr/>
            {
                newMethod.map((step, index) => {
                    if(index !== 0)
                    return  <>
                                <h5 className="method-step"><strong>Step {index}:</strong></h5>
                                <p className="method-step">{step}</p>
                            </>
                })
            }
        </div>
           }  
        </>
    )
}