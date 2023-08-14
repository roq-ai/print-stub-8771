interface AppConfigInterface {
  ownerRoles: string[];
  customerRoles: string[];
  tenantRoles: string[];
  tenantName: string;
  applicationName: string;
  addOns: string[];
}
export const appConfig: AppConfigInterface = {
  ownerRoles: ['Business Owner'],
  customerRoles: ['Customer'],
  tenantRoles: ['Business Owner', 'Store Manager', 'Sales Associate', 'IT Support'],
  tenantName: 'Business',
  applicationName: 'Print stub',
  addOns: ['file upload', 'chat', 'notifications', 'file'],
};
