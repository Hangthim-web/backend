/*
  Warnings:

  - You are about to drop the `ShippingMethod` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ShoppingCart` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserAddress` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserReview` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `address` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "ShopOrder" DROP CONSTRAINT "ShopOrder_shipping_method_id_fkey";

-- DropForeignKey
ALTER TABLE "ShoppingCart" DROP CONSTRAINT "ShoppingCart_user_id_fkey";

-- DropForeignKey
ALTER TABLE "ShoppingCartItem" DROP CONSTRAINT "ShoppingCartItem_shopping_cart_id_fkey";

-- DropForeignKey
ALTER TABLE "UserAddress" DROP CONSTRAINT "UserAddress_address_id_fkey";

-- DropForeignKey
ALTER TABLE "UserAddress" DROP CONSTRAINT "UserAddress_user_id_fkey";

-- DropForeignKey
ALTER TABLE "UserReview" DROP CONSTRAINT "UserReview_ordered_product_id_fkey";

-- DropForeignKey
ALTER TABLE "UserReview" DROP CONSTRAINT "UserReview_user_id_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "address" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL;

-- DropTable
DROP TABLE "ShippingMethod";

-- DropTable
DROP TABLE "ShoppingCart";

-- DropTable
DROP TABLE "UserAddress";

-- DropTable
DROP TABLE "UserReview";
