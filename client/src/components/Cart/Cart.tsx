import React, { useContext } from "react";
import { Card } from "../Card/Card";
import { CartContext } from "../../contexts/CartContext";
import "./Cart.css";
import { CartProduct } from "../CartProduct/CartProduct";

export function Cart(props:{products: any[]}) {
  const { productsInCart, setProductsInCart } = useContext(CartContext); //use Context
  let {products} = {...props};

  console.log(products[0].pictureURL);
  
  return (
    <div>
      {" "}
      {products.map((product, i) => (
        <CartProduct
          key={i}
          id={product.id}
          // newFlag={product.newFlag}
          nameProduct={product.nameProduct}
          pictureURL={product.pictureURL}
          price={product.price}
          salePrice={product.salePrice}
        />
      ))}
    </div>
  );
}
