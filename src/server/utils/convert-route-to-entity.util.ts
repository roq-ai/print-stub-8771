const mapping: Record<string, string> = {
  businesses: 'business',
  products: 'product',
  receipts: 'receipt',
  stores: 'store',
  users: 'user',
};

export function convertRouteToEntityUtil(route: string) {
  return mapping[route] || route;
}
