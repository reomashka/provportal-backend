-- CreateTable
CREATE TABLE "posts" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "tage" TEXT,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "posts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "skins" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "shop" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "time_year" TEXT NOT NULL,

    CONSTRAINT "skins_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "transport" (
    "id" SERIAL NOT NULL,
    "name_auto" TEXT NOT NULL,
    "full_speed" INTEGER NOT NULL,
    "speed_100_time" DOUBLE PRECISION NOT NULL,
    "speed_max_time" DOUBLE PRECISION NOT NULL,
    "volume_tank" INTEGER NOT NULL,
    "cost_liter" INTEGER NOT NULL,
    "type_tank" TEXT NOT NULL,
    "slots" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "seats" INTEGER NOT NULL,
    "lite_insurance" INTEGER NOT NULL,
    "quantity_insurance" INTEGER NOT NULL,
    "unique_name" TEXT NOT NULL,
    "type_body" TEXT NOT NULL,
    "showroom" TEXT NOT NULL,
    "EPP" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "stage_counter" INTEGER NOT NULL,
    "paint_inter" TEXT NOT NULL,
    "paint_first" TEXT NOT NULL,
    "paint_second" TEXT NOT NULL,
    "paint_third" TEXT NOT NULL,
    "antichrome" INTEGER NOT NULL,
    "accessories" TEXT NOT NULL,
    "rims" TEXT NOT NULL,
    "gos_cost_old" INTEGER NOT NULL,
    "class" TEXT NOT NULL,
    "units" INTEGER,

    CONSTRAINT "transport_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "users" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "posts" ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
