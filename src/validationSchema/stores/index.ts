import * as yup from 'yup';

export const storeValidationSchema = yup.object().shape({
  name: yup.string().required(),
  address: yup.string().required(),
  business_id: yup.string().nullable(),
});
