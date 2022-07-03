-- CreateTable
CREATE TABLE `Books` (
    `bookId` BIGINT NOT NULL AUTO_INCREMENT,
    `bookDescription` VARCHAR(500) NOT NULL,
    `bookQuantity` BIGINT NOT NULL,

    PRIMARY KEY (`bookId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Articles` (
    `articleId` BIGINT NOT NULL AUTO_INCREMENT,
    `dateAcquired` DATE NOT NULL,
    `articleName` VARCHAR(500) NOT NULL,
    `propertyNumber` VARCHAR(100) NOT NULL,
    `bookQuantity` BIGINT NOT NULL,
    `unitCost` DOUBLE NOT NULL,
    `totalCost` DOUBLE NOT NULL,
    `remarks` TEXT NOT NULL,

    PRIMARY KEY (`articleId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Persons` (
    `personId` BIGINT NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`personId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Transactions` (
    `transactionId` BIGINT NOT NULL AUTO_INCREMENT,
    `bookId` BIGINT NOT NULL,
    `personId` BIGINT NOT NULL,
    `dateBorrowed` DATE NOT NULL,
    `dateReturned` DATE NULL,
    `quantity` BIGINT NOT NULL,

    PRIMARY KEY (`transactionId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Transactions` ADD CONSTRAINT `Transactions_bookId_fkey` FOREIGN KEY (`bookId`) REFERENCES `Books`(`bookId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Transactions` ADD CONSTRAINT `Transactions_personId_fkey` FOREIGN KEY (`personId`) REFERENCES `Persons`(`personId`) ON DELETE RESTRICT ON UPDATE CASCADE;
