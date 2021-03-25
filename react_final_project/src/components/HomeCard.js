import "../styles/HomeCard.css";

class Card {
    constructor(img, title, text) {
        this.img = img;
        this.title = title;
        this.text = text;
    }

    render(){
        return(
        <div className="card text-center">
            <div className="card-img-top d-flex justify-content-center">
                <div className={"card-circle " + this.img}></div>
            </div>
            <div className="card-body">
                <h5 className="card-title">{this.title}</h5>
                <p className="card-text">{this.text}</p>
            </div>
        </div>
        )
    }
}

export const card1 = new Card ("icon-1", "First title", "First text");
export const card2 = new Card ("icon-2", "Second title", "Second text");
export const card3 = new Card ("icon-3", "Third title", "Third text");
