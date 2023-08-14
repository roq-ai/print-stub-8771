-- CreateTable
CREATE TABLE "business" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "description" VARCHAR(255),
    "name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_id" UUID NOT NULL,
    "tenant_id" VARCHAR(255) NOT NULL,

    CONSTRAINT "business_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" VARCHAR(255) NOT NULL,
    "price" INTEGER NOT NULL,
    "store_id" UUID,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "receipt" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "customer_name" VARCHAR(255) NOT NULL,
    "customer_email" VARCHAR(255) NOT NULL,
    "sales_associate_id" UUID,
    "store_id" UUID,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "receipt_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" VARCHAR(255) NOT NULL,
    "address" VARCHAR(255) NOT NULL,
    "business_id" UUID,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "store_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "email" VARCHAR(255) NOT NULL,
    "firstName" VARCHAR(255),
    "lastName" VARCHAR(255),
    "roq_user_id" VARCHAR(255) NOT NULL,
    "tenant_id" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- AddForeignKey
ALTER TABLE "business" ADD CONSTRAINT "business_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product" ADD CONSTRAINT "product_store_id_fkey" FOREIGN KEY ("store_id") REFERENCES "store"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "receipt" ADD CONSTRAINT "receipt_sales_associate_id_fkey" FOREIGN KEY ("sales_associate_id") REFERENCES "user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "receipt" ADD CONSTRAINT "receipt_store_id_fkey" FOREIGN KEY ("store_id") REFERENCES "store"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "store" ADD CONSTRAINT "store_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "business"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

