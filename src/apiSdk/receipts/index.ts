import axios from 'axios';
import queryString from 'query-string';
import { ReceiptInterface, ReceiptGetQueryInterface } from 'interfaces/receipt';
import { GetQueryInterface, PaginatedInterface } from '../../interfaces';

export const getReceipts = async (query?: ReceiptGetQueryInterface): Promise<PaginatedInterface<ReceiptInterface>> => {
  const response = await axios.get('/api/receipts', {
    params: query,
    headers: { 'Content-Type': 'application/json' },
  });
  return response.data;
};

export const createReceipt = async (receipt: ReceiptInterface) => {
  const response = await axios.post('/api/receipts', receipt);
  return response.data;
};

export const updateReceiptById = async (id: string, receipt: ReceiptInterface) => {
  const response = await axios.put(`/api/receipts/${id}`, receipt);
  return response.data;
};

export const getReceiptById = async (id: string, query?: GetQueryInterface) => {
  const response = await axios.get(`/api/receipts/${id}${query ? `?${queryString.stringify(query)}` : ''}`);
  return response.data;
};

export const deleteReceiptById = async (id: string) => {
  const response = await axios.delete(`/api/receipts/${id}`);
  return response.data;
};
