import React from "react";
import { useNavigate, useParams } from "react-router-dom";
import { ECategories } from "../../Enums/ECategories";
import "./CartProduct.css";

export function CartProduct(props: {
  id: number;
  nameProduct: string;
  pictureURL: string;
  price: number;
  salePrice: number | null;
}) {
  let { id, nameProduct, pictureURL, price, salePrice } = {
    ...props,
  };
  let showFlag = true;
  if(id === 0)
    {showFlag = false};


    console.log(pictureURL);
    
  return (
    <div className={showFlag? "cartProductDiv" : "hidden"} >
      <div className="imgDiv">
        <img src={pictureURL} alt={nameProduct} />
      </div>
      <div className="detailsDiv">
        <h3>{nameProduct}</h3>
        <div className="priceDiv">
          <h3>{salePrice ? salePrice : price} US Dollars</h3>
        </div>
      </div>
    </div>


  );
}
