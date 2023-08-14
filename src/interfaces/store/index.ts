import { ProductInterface } from 'interfaces/product';
import { ReceiptInterface } from 'interfaces/receipt';
import { BusinessInterface } from 'interfaces/business';
import { GetQueryInterface } from 'interfaces';

export interface StoreInterface {
  id?: string;
  name: string;
  address: string;
  business_id?: string;
  created_at?: any;
  updated_at?: any;
  product?: ProductInterface[];
  receipt?: ReceiptInterface[];
  business?: BusinessInterface;
  _count?: {
    product?: number;
    receipt?: number;
  };
}

export interface StoreGetQueryInterface extends GetQueryInterface {
  id?: string;
  name?: string;
  address?: string;
  business_id?: string;
}
