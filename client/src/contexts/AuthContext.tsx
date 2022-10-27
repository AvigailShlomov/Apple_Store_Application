import React, { createContext, useState } from 'react'


export type TokenContent = {
  userToken: string | null
  setUserToken:(t: string | null) => void
}

export const AuthContext = createContext<TokenContent>({
  userToken: null,
  setUserToken: () => {}
});

export const AuthContextProvider = (props: any) => {
    const token = localStorage.getItem('user-token');

    const INITIAL_STATE = token ? token : null;
    const [userToken, setUserToken] = useState(INITIAL_STATE);

    const value = {
        userToken: userToken,
        setUserToken: setUserToken
    };

    return (
        <AuthContext.Provider value={value}>
            {props.children}
        </AuthContext.Provider>
    );
};

