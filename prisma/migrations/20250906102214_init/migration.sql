-- CreateEnum
CREATE TYPE "UserRole" AS ENUM ('REGULAR', 'ADMIN');

-- CreateEnum
CREATE TYPE "AuthMethod" AS ENUM ('CREDENTIALS', 'GOOGLE', 'YANDEX');

-- CreateEnum
CREATE TYPE "TransportClass" AS ENUM ('PASSENGER', 'CARGO', 'MOTO', 'PUBLIC', 'CONTAINER', 'EXCLUSIVE', 'FRACTION');

-- CreateEnum
CREATE TYPE "Showroom" AS ENUM ('АвтоМакс', 'Mercury-Auto', 'РОФЛ', 'World of Auto');

-- CreateEnum
CREATE TYPE "FuelType" AS ENUM ('АИ-92', 'АИ-95', 'АИ-98', 'АИ-100', 'ДТ', 'Электричество');

-- CreateEnum
CREATE TYPE "CountryOrigin" AS ENUM ('СССР/Россия', 'США', 'Германия', 'Франция', 'Италия', 'Швеция', 'Англия', 'Япония', 'Чехия', 'Украина', 'Беларусь', 'Австрия', 'Южная Корея', 'СССР/Венгрия', 'СССР/Украина', 'Китай');

-- CreateEnum
CREATE TYPE "City" AS ENUM ('Приволжск', 'Невский', 'Мирный');

-- CreateEnum
CREATE TYPE "CarType" AS ENUM ('Хэтчбек', 'Седан', 'Купе', 'Лифтбек', 'Универсал', 'Кроссовер', 'Фургон', 'Внедорожник', 'Микроавтобус', 'Автобус', 'Тягач', 'Грузовик', 'Пикап', 'Кабриолет');

-- CreateEnum
CREATE TYPE "TokenType" AS ENUM ('VERIFICATION', 'TWO_FACTOR', 'PASSWORD_RESET');

-- CreateTable
CREATE TABLE "users" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "display_name" TEXT NOT NULL,
    "picture" TEXT,
    "role" "UserRole" NOT NULL DEFAULT 'REGULAR',
    "is_verified" BOOLEAN NOT NULL DEFAULT false,
    "is_two_factor_enabled" BOOLEAN NOT NULL DEFAULT false,
    "method" "AuthMethod" NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "transport" (
    "id" SERIAL NOT NULL,
    "name_auto" TEXT NOT NULL,
    "price" INTEGER,
    "full_speed" INTEGER,
    "speed_100_time" DOUBLE PRECISION,
    "speed_max_time" DOUBLE PRECISION,
    "volume_tank" INTEGER,
    "fuel_type" "FuelType",
    "slots" INTEGER,
    "seats" INTEGER,
    "lite_insurance" INTEGER,
    "repair_without_ins" INTEGER,
    "has_stand_ins" BOOLEAN DEFAULT false,
    "has_exc_ins" BOOLEAN DEFAULT false,
    "unique_name" TEXT NOT NULL,
    "type_body" "CarType" NOT NULL,
    "showroom" TEXT,
    "epp" BOOLEAN,
    "city" "City",
    "country" "CountryOrigin",
    "stage_counter" INTEGER,
    "paint_inter" TEXT,
    "paint_first" TEXT,
    "paint_second" TEXT,
    "paint_third" TEXT,
    "antichrome" BOOLEAN,
    "accessories" TEXT,
    "rims" TEXT,
    "gos_cost_old" INTEGER[],
    "class" "TransportClass",
    "units" INTEGER,

    CONSTRAINT "transport_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tokens" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "type" "TokenType" NOT NULL,
    "expires_in" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "tokens_pkey" PRIMARY KEY ("id")
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
CREATE TABLE "jobs" (
    "id" SERIAL NOT NULL,
    "unique_name" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "lvl" INTEGER NOT NULL,
    "city" TEXT NOT NULL,
    "about" TEXT NOT NULL,
    "html_description_code" TEXT NOT NULL,
    "settings" INTEGER NOT NULL,

    CONSTRAINT "jobs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "accounts" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL,
    "provider" TEXT NOT NULL,
    "refresh_token" TEXT,
    "access_token" TEXT,
    "expires_at" INTEGER NOT NULL,
    "user_id" INTEGER,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "accounts_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "jobs_unique_name_key" ON "jobs"("unique_name");

-- AddForeignKey
ALTER TABLE "accounts" ADD CONSTRAINT "accounts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
