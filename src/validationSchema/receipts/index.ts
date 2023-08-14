import * as yup from 'yup';

export const receiptValidationSchema = yup.object().shape({
  customer_name: yup.string().required(),
  customer_email: yup.string().required(),
  sales_associate_id: yup.string().nullable(),
  store_id: yup.string().nullable(),
});
