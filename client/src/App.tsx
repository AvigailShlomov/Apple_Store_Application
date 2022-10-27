import React from "react";
import "./App.css";
import { AuthContextProvider } from "./contexts/AuthContext";
import { UserContextProvider } from "./contexts/UserContext";
import { ProductContextProvider } from "./contexts/ProductContext";
import { CartContextProvider } from "./contexts/CartContext";
import { Route, Routes } from "react-router-dom";
import { NavBar } from "./components/NavBar/NavBar";
import { Footer } from "./components/Footer/Footer";
import { PageHome } from "./Pages/PageHome/PageHome";
import { PageSignIn } from "./Pages/PageSignIn/PageSignIn";
import { PageSupport } from "./Pages/PageSupport/PageSupport";
import { PageShoppingCart } from './Pages/PageShoppingCart/PageShoppingCart';
import { PageCatalog } from "./Pages/PageCatalog/PageCatalog";
import { PageCategory } from "./Pages/PageCategory/PageCategory";
import { PageProduct } from "./Pages/PageProduct/PageProduct";
import { PageUser } from './Pages/PageUser/PageUser';

function App() {
  return (
    <div className="App">
      <AuthContextProvider>
        <UserContextProvider>
          <ProductContextProvider>
            <CartContextProvider>
              <NavBar />
              <Routes>
                <Route path="/" element={<PageHome />} />
                <Route path="support" element={<PageSupport />} />
                <Route path="signin" element={<PageSignIn />} />
                <Route path="user/:username" element={<PageUser />} />
                <Route path="cart" element={<PageShoppingCart />} />

                <Route path="/category" element={<PageCategory />}>
                  <Route path="/category/:category_type" element={<PageCatalog />}/>
                  <Route path="/category/:category_type/:product_id" element={<PageProduct />}/>
                </Route>
                {/* <Route path='/category'>
                <Route path='/:category_type/:product_id' element={<PageProduct/>}/>
              </Route> */}

              </Routes>
              <Footer />
            </CartContextProvider>
          </ProductContextProvider>
        </UserContextProvider>
      </AuthContextProvider>
    </div>
  );
}

export default App;
