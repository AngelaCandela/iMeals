import "../styles/HomeBottomContainer.css";
import { card1, card2, card3 } from "./HomeCard";

export default function HomeBottomContainer() {
    return (
        <div className="home-bottom-container">
            {card1.render()}
            {card2.render()}
            {card3.render()}
        </div>
    )
}
