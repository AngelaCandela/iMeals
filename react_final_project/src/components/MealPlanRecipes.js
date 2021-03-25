import { useHistory } from "react-router-dom";

export default function MealPlanRecipes({ title, recipes }) { 
    
    let history = useHistory();

    const showRecipeDetails = (e) => {
        e.preventDefault();
        localStorage.setItem('recipeToShow', e.target.id);
        history.push(`/recipes/${e.target.id}`);
    }
    
    return (
        <div>
            <h5>{title}</h5>
            <ul className="mealplan-recipes-list">
                {recipes.map((recipe) => {                    
                    return  <div key={recipe.id}>
                                <img src={'http://localhost:8000/recipes/'+recipe.img} className="sneakPic" alt="img"/>
                                <a href="#" id={recipe.id} onClick={showRecipeDetails}>{recipe.name}</a>
                            </div>        
                })
                }
            </ul>
        </div>
    )
}
