import React, { createContext, useState } from 'react'
import { IUser } from '../Interfaces/IUser';


export type UserContent = {
  user: IUser | null
  setUser:(u: IUser | null) => void
}

export const UserContext = createContext<UserContent>({
    user: null,
    setUser: () => {}
});

export const UserContextProvider = (props: any) => {
    // const token = localStorage.getItem('user-token');

    // const INITIAL_STATE = token ? token : null;
    const [user, setUser] = useState<IUser | null>(null);

    const value = {
        user: user,
        setUser: setUser
    };

    return (
        <UserContext.Provider value={value}>
            {props.children}
        </UserContext.Provider>
    );
};

