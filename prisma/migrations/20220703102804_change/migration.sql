/*
  Warnings:

  - You are about to alter the column `unitCost` on the `articles` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.
  - You are about to alter the column `totalCost` on the `articles` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.

*/
-- AlterTable
ALTER TABLE `articles` MODIFY `unitCost` DOUBLE NOT NULL,
    MODIFY `totalCost` DOUBLE NOT NULL;
