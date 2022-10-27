import { EColors } from "../Enums/EColors";
import { IAProduct } from './IAProduct';

export interface IWaProduct extends IAProduct{
    // productId: number,
    color: EColors
}
