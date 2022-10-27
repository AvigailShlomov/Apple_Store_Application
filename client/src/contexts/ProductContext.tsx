import React, { createContext, useContext, useState } from "react";
import { IAProduct } from "../Interfaces/IAProduct";

export type GlobalContent = {
  allProducts: IAProduct[];
  setAllProducts: (c: IAProduct[]) => void;
};

export const ProductContext = createContext<GlobalContent>({
  allProducts: [],
  setAllProducts: () => {},
});

export const ProductContextProvider = (props: any) => {
  const [allProducts, setAllProducts] = useState<IAProduct[]>([]);
  const value = {
    allProducts: allProducts,
    setAllProducts: setAllProducts,
  };

  return (
    <ProductContext.Provider value={value}>
      {props.children}
    </ProductContext.Provider>
  );
};
