import axios from "axios";
import React, { useContext, useEffect, useState } from "react";
import { Cart } from "../../components/Cart/Cart";
import { CartContext } from "../../contexts/CartContext";
import { UserContext } from "../../contexts/UserContext";
import { environments } from "../../evironments/environments";
import "./PageShoppingCart.css";

export function PageShoppingCart() {
  const { productsInCart, setProductsInCart } = useContext(CartContext); //use Context
  // const sum = receiptItems.filter(item => item.tax === '25.00')
  // .reduce((sum, current) => sum + current.total, 0);
  let finalPrice = 0;
  const finalPriceArray = productsInCart.filter((product) => {
    if (product.salePrice) finalPrice += product.salePrice;
    else finalPrice += product.price;
  });

  const { user, setUser } = useContext(UserContext);
  const [ shoppingCart, setShoppingCart ] = useState([
    {
      id: 0,
      allProductsAmount: 0,
      finalPrice: 0,
      productAmount: 0,
      productId: 0,
      nameProduct: "",
      pictureURL: "",
      price: 0,
      salePrice: 0  
    }
  ]);
  // id: number,
	// nameProduct: string,
	// category: ECategories,
	// price: number,
	// details: string,
	// pictureUrl: string,
	// newFlag: boolean,
	// salePrice: number | null


  const baseUrl = environments.API_URL;
  const url = baseUrl + "shopping/cart/";    

useEffect(() => {
  axios
    .get(`${url}${user?.id}?procedure=spGetCartByUserId`)
    .then((response) => {
      setShoppingCart([...response.data]);
      // setShoppingCart([...response.data]);
    })
    .catch((error) => {
      throw new Error("error: ", error);
    });
}, []);



  return (
    <div className="pageShoppingCartDiv">
      <h1>Shopping Cart</h1>
      <Cart products={shoppingCart}/>
      <div className="finalPriceDiv">
        <h2>SUB-TOTAL: {shoppingCart[0].finalPrice} US Dollars</h2>
        <div className="btnDiv">
          <button>Checkout</button>
        </div>
      </div>
    </div>
  );
}

// <button

// .pageProductDiv .imgbtnDiv .btnDiv button{
//     display: block;
//     width: 120px;
//     margin: auto;
//     font-size: medium;
//     padding: 8px 0;
//     background-color: #0071e3;
//     color: #fff;
//     border-radius: 10px;
//     border-style:hidden;
// }
// .pageProductDiv .imgbtnDiv .btnDiv{
//         width: 70%;
//         margin: auto;
//         margin-top: 50px;
//     }
