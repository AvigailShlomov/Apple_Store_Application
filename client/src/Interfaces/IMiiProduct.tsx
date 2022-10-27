import { EColors } from "../Enums/EColors"
import { IAProduct } from './IAProduct';

export interface IMiiProduct extends IAProduct{
	// productId: number,
	color: EColors,
	memory: string,
	screenSize: string
}