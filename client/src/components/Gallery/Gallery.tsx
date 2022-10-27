import React, { useContext, useEffect, useState } from "react";
import { ECategories } from "../../Enums/ECategories";
import { Card } from "../Card/Card";
import "./Gallery.css";
import { IAProduct } from "../../Interfaces/IAProduct";
import { EColors } from "../../Enums/EColors";
import { IMiiProduct } from "../../Interfaces/IMiiProduct";
import { IWaProduct } from "../../Interfaces/IWaProduct";
import { useParams } from "react-router-dom";
import axios from "axios";
import { ProductContext } from "../../contexts/ProductContext";
import { environments } from "../../evironments/environments";

export function Gallery(props: {}) {
  //const {} = {...props};
  const { category_type } = useParams();
  const { allProducts, setAllProducts } = useContext(ProductContext);
  const baseUrl = environments.API_URL;
  const [ showProducts, setShowProducts ] = useState<IAProduct[]>([]);
  
  let title = category_type;
  if(category_type === 'Iphone'){
    title = 'iPhone';
  }
  if(category_type === 'Ipad'){
    title = 'iPad';
  }

  // const [category, setCategory] = useState("");
  // setCategory(category_type);

  // console.log("params: ", category_type);
  const url = baseUrl + "AllProducts/Category/";
  // let prod : IAProduct = {};
  // const [allProducts, setAllProducts] = useState<IAProduct[]>([]);

  //1.get specific details of category
  //2. get all ctegories and we create card only for specific category
  // const info=[{},{}];
  // const onlyMac=info.map

  //---------- Get List of Products  ----------
  useEffect(() => {
    // axios.create({
    //     baseURL:
    // })
    axios
      .get(`${url}${category_type}`)
      .then((response) => {
        setAllProducts([...response.data]);
        setShowProducts([...response.data]);
        // console.log(response.data);
        // console.log(response.data[0].pictureUrl);
      })
      .catch((error) => {
        throw new Error("error: ", error);
      });
  }, [category_type]);

  //---------- Creating Example Products ----------
  // const exampleProducts: (IAProduct | IMiiProduct | IWaProduct) [] = [
  // // const exampleProducts: IProduct[] = [
  //     {nameProduct: "MacBook Pro", category: ECategories.mac, price: 1000, details: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum, ad?", pictureURL: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653493200207", newFlag: true, productId: 1, color: EColors.gray, memory: "256gb", screenSize: "7inch"},

  //     {nameProduct: "iPad Air", category: ECategories.ipad, price: 700, details: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum, ad?", pictureURL: "https://img.zap.co.il/pics/4/7/0/0/70360074c.gif", newFlag: false, productId: 2, color: EColors.pink, memory: "256gb", screenSize: "7inch"},

  //     {nameProduct: "iPhone 8 plus", category: ECategories.iphone, price: 650, details: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum, ad?", pictureURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/IPhone_8_vector.svg/1200px-IPhone_8_vector.svg.png", newFlag: false, productId: 3, color: EColors.pink, memory: "256gb", screenSize: "7inch"},

  //     {nameProduct: "Watch SE", category: ECategories.watch, price: 380, details: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum, ad?", pictureURL: "https://buyiphone.co.il/wp-content/uploads/2021/08/apple-watch-se-44mm-%D7%A9%D7%A2%D7%95%D7%9F-%D7%97%D7%9B%D7%9D-%D7%90%D7%A4%D7%9C-1.jpeg", newFlag: true, productId: 4, color: EColors.pink},

  //     {nameProduct: "Airpods 2", category: ECategories.airpods, price: 90, details: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum, ad?", pictureURL: "https://m.media-amazon.com/images/I/71NTi82uBEL._AC_SL1500_.jpg", newFlag: false, productId: 5, color: EColors.pink},

  //     {nameProduct: "Keyboard", category: ECategories.accessories, price: 35, details: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatum, ad?", pictureURL: "https://buyiphone.co.il/wp-content/uploads/2019/07/Magic-Keyboard-with-for-Mac.jpeg", newFlag: true, productId: 6}
  // ];
  
  function MouseOver(event: any) {
    event.target.style.cursor = 'pointer';
    event.target.style.color = 'red';
  }

  function MouseOut(event: any){
    event.target.style.color = 'black';
  }

  function showOnly(filter: string){
    // (document.querySelector('#humburger') as HTMLElement).classList.toggle('shown');

    if(filter === "new"){
      const filtered = allProducts.filter((product) => {
        return product.newFlag;
      });
      setShowProducts(filtered);
    }else if(filter === "sale"){
      const filtered = allProducts.filter((product) => {
        return (product.salePrice != null);
      });
      setShowProducts(filtered);
    }else if(filter === "all"){
      setShowProducts(allProducts);
    }
  }



  return (
    <div className="galleryDiv">
      <div className="galleryHeaderDiv">
        <div className="galleryRightDiv">
          <h1>{title}</h1>
        </div>
        <div className="galleryLeftDiv">
          {/* <div>show</div> */}
          <div className="filterDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{showOnly("new")}}>new</div>
          <div>|</div>
          <div className="filterDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{showOnly("sale")}}>sale</div>
          <div>|</div>
          <div className="filterDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{showOnly("all")}}>all</div>
        </div>
      </div>
      {/* <h4 id="title">All you need is here</h4> */}
      <div className="galleryGrid">
        {showProducts.map((product, i) => (
          <Card
            key={i}
            id={product.id}
            category={product.category}
            newFlag={product.newFlag}
            nameProduct={product.nameProduct}
            pictureURL={product.pictureUrl}
            price={product.price}
            salePrice={product.salePrice}
          />
        ))}
        {/* {allProducts.map((product, i)=>(
                <Card key={i} newFlag={product.newFlag} nameProduct={product.nameProduct} pictureURL={product.pictureUrl} price={product.price} salePrice={product.salePrice}/>
            ))} */}
        {/* {allProducts.map((product, i)=>(
                <Card key={i} newFlag={product.newFlag} nameProduct={product.nameProduct}pictureURL={product.pictureURL} price={product.price} salePrice={null}/>
            ))} */}
      </div>
    </div>
  );
}
