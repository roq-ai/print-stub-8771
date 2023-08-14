import { UserInterface } from 'interfaces/user';
import { StoreInterface } from 'interfaces/store';
import { GetQueryInterface } from 'interfaces';

export interface ReceiptInterface {
  id?: string;
  customer_name: string;
  customer_email: string;
  sales_associate_id?: string;
  store_id?: string;
  created_at?: any;
  updated_at?: any;

  user?: UserInterface;
  store?: StoreInterface;
  _count?: {};
}

export interface ReceiptGetQueryInterface extends GetQueryInterface {
  id?: string;
  customer_name?: string;
  customer_email?: string;
  sales_associate_id?: string;
  store_id?: string;
}
