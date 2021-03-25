export default function SelectedRecipes({ title, recipes }) { 
    
    return (
        <div>
            <h4>{title}</h4>
            <ul className="selected-recipe">
                {recipes.map((recipe) => {                    
                    return  <div key={recipe.id}>
                                <img src={'http://localhost:8000/recipes/'+recipe.img} className="sneakPic" alt="img"/>
                                <p>{recipe.name}</p>
                            </div>        
                })
                }
            </ul>
        </div>
    )
}
