import { ECategories } from "../Enums/ECategories";

export interface IAProduct{
	id: number,
	nameProduct: string,
	category: ECategories,
	price: number,
	details: string,
	pictureUrl: string,
	newFlag: boolean,
	salePrice: number | null
}