-- CreateTable
CREATE TABLE "Barbershop" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "adress" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "imgUrl" TEXT NOT NULL,
    "phones" TEXT[],

    CONSTRAINT "Barbershop_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BarbershopServices" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "imgUrl" TEXT NOT NULL,
    "barbershopid" TEXT NOT NULL,
    "priceInCents" INTEGER NOT NULL,

    CONSTRAINT "BarbershopServices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Booking" (
    "id" TEXT NOT NULL,
    "serviceId" TEXT NOT NULL,
    "barbershopid" TEXT NOT NULL,
    "date" TIMESTAMPTZ NOT NULL,
    "cancelled" BOOLEAN DEFAULT false,
    "cancelledAt" TIMESTAMPTZ NOT NULL,

    CONSTRAINT "Booking_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "BarbershopServices" ADD CONSTRAINT "BarbershopServices_barbershopid_fkey" FOREIGN KEY ("barbershopid") REFERENCES "Barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
