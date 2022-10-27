import React, { useContext, useState } from "react";
import { useParams } from "react-router-dom";
import "./PageProduct.css";
import { ProductContext } from "../../contexts/ProductContext";
import { CartContext } from "../../contexts/CartContext";
import { IMiiProduct } from "../../Interfaces/IMiiProduct";
import { IWaProduct } from "../../Interfaces/IWaProduct";
import { IAProduct } from "../../Interfaces/IAProduct";

export function PageProduct() {
  const { allProducts, setAllProducts } = useContext(ProductContext);
  const { productsInCart, setProductsInCart } = useContext(CartContext); //use Context
  const { category_type, product_id } = useParams();
  const [ addedToCart, setAddedToCart ] = useState(false);

  console.log("allproduct: ", allProducts);

  let product = allProducts.find((item) => {
    if (item.id === Number(product_id)){
      return item as IAProduct;
    } else return null;
  });
  // const product = allProducts.filter((item) => {return (item.id === +productId)});
  // if(product[0])

  // console.log("product: ",product);
  // // console.log("product0: ",product);
  // console.log("typeof:", typeof(product));

  // TO DO
  // find the product in the DB and show its page

  function MouseOver(event: any) {
    if(!addedToCart){
      event.target.style.cursor = 'pointer';
      event.target.style.backgroundColor = '#0071e3cb';
    }
  }

  function MouseOut(event: any){
    event.target.style.cursor = 'auto';
    event.target.style.backgroundColor = '#0071e3';
  }

  function addToCart(event: any){
    setProductsInCart([...productsInCart, product as IAProduct]);
    setAddedToCart(true);
    event.target.style.cursor = 'auto';
  }

  return (
    <div className="pageProductDiv">
      <div className="imgbtnDiv">
        <div className="imgDiv">
          {/* <img src="https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5985/5985618cv11d.jpg" alt=""/> */}
          {/* <img src={process.env.PUBLIC_URL + '/pictures/iphone_8_256.jpg'} alt=""/> */}
          {/* <img src={url/airpods_2>} alt=""/> */}
          <img src={product?.pictureUrl} alt="" />
        </div>
        <div className="btnDiv">
          <button disabled={addedToCart} onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{addToCart(event)}}>
            {!addedToCart ? "Add to Cart" : "Added"}
          </button>
        </div>
      </div>
      <div className="descriptionDiv">
        <div className="infoDiv">
          <h3>{product?.nameProduct}</h3>
          <h4>{product?.newFlag}</h4>
          <h4>{(product as IMiiProduct)?.color}</h4>
          <h4>{(product as IMiiProduct)?.memory}</h4>
          <h4>{(product as IMiiProduct)?.screenSize}</h4>
        </div>
        <div className="priceDiv">
          <h2 className={product?.salePrice ? 'onSale' : ''}>Price {product?.price}$</h2>
          <h2>{product?.salePrice ? `Sale ${product?.salePrice}$` : ""}</h2>
        </div>
        <div className="detailsDiv">
          <h3>Details</h3>
          <p>{product?.details}</p>
        </div>
      </div>
      {/* <button type="submit" className="button button-block" id="add-to-cart" name="add-to-cart" value="add-to-cart" data-autom="add-to-cart">Add to Bag</button> */}
    </div>
  );
}
