import React, { createContext, useContext, useState } from "react";
import { IAProduct } from "../Interfaces/IAProduct";

export type GlobalContent1 = {
  productsInCart: IAProduct[];
  setProductsInCart: (c: IAProduct[]) => void;
};

export const CartContext = createContext<GlobalContent1>({
  productsInCart: [],
  setProductsInCart: () => {},
});

export const CartContextProvider = (props: any) => {
  const [productsInCart, setProductsInCart] = useState<IAProduct[]>([]);
  const value = {
    productsInCart: productsInCart,
    setProductsInCart: setProductsInCart,
  };

  return (
    <CartContext.Provider value={value}>{props.children}</CartContext.Provider>
  );
};
