export default function SelectedRecipes({ title, recipes }) { 
    
    return (
        <div>
            <h4 className="selected-recipes-title">{title}</h4>
            <hr className="selected-recipes-hr"/>
            <ul className="selected-recipes-list">
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
