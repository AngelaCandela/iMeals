import "../styles/ShoppingList.css";

export default function ShoppingList({ ingredients, disabled, setDisabled }) {
    return (
        <div className="backdrop" disabled={disabled}>
            <div className="shopping-list-card" disabled={disabled}>
                <h4 className="shopping-list-title">Shopping List</h4>
                <button type="button" className="close-btn" onClick={() => setDisabled(true)}>X</button>
                <ul className="shopping-list">
                    {
                        ingredients.map((ingredient, index) => {
                            return  <li key={index}><strong>{ingredient.ingredient}</strong>   {ingredient.amount} {ingredient.unit}</li>
                        })
                    }
                </ul>
                <button type="button" className="shopping-list-btn">Download</button>
            </div>
        </div>
    )
}
