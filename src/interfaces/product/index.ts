import { StoreInterface } from 'interfaces/store';
import { GetQueryInterface } from 'interfaces';

export interface ProductInterface {
  id?: string;
  name: string;
  price: number;
  store_id?: string;
  created_at?: any;
  updated_at?: any;

  store?: StoreInterface;
  _count?: {};
}

export interface ProductGetQueryInterface extends GetQueryInterface {
  id?: string;
  name?: string;
  store_id?: string;
}
