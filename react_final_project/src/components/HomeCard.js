import "../styles/HomeCard.css";

class Card {
    constructor(img, title, text) {
        this.img = img;
        this.title = title;
        this.text = text;
    }

    render(){
        return(
        <div className="card">
            <div className={"card-square-img " + this.img}></div>            
            <div className="card-body">
                <h5 className="card-title text-center">{this.title}</h5>
                <p className="card-text">{this.text}</p>
            </div>
        </div>
        )
    }
}

export const card1 = new Card ("icon-1", "1. Set your preferences", "Vegetarian? Gluten-free? You choose!");
export const card2 = new Card ("icon-2", "2. Generate", "Create as many mealplans as you like.");
export const card3 = new Card ("icon-3", "3. Save", "Like what you see? Save it to your profile.");
