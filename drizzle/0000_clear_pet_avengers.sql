CREATE TYPE "public"."country_origin" AS ENUM('USSR_RUSSIA', 'USA', 'GERMANY', 'FRANCE', 'ITALY', 'SWEDEN', 'UK', 'JAPAN', 'CZECH_REPUBLIC', 'UKRAINE', 'BELARUS', 'AUSTRIA', 'SOUTH_KOREA', 'USSR_HUNGARY', 'USSR_UKRAINE', 'CHINA');--> statement-breakpoint
CREATE TYPE "public"."drive_type" AS ENUM('FRONT', 'REAR', 'ALL');--> statement-breakpoint
CREATE TYPE "public"."fuel_type" AS ENUM('AI92', 'AI95', 'AI98', 'AI100', 'DT', 'ELECTRIC');--> statement-breakpoint
CREATE TYPE "public"."showroom" AS ENUM('AVTOMAKS', 'MERCURY_AUTO', 'ROFL', 'WORLD_OF_AUTO', 'OGONEK');--> statement-breakpoint
CREATE TYPE "public"."showroom_city" AS ENUM('PRIVOLZHSK', 'NEVSKY', 'MIRNY');--> statement-breakpoint
CREATE TYPE "public"."transport_class" AS ENUM('PASSENGER', 'CARGO', 'MOTO', 'PUBLIC', 'CONTAINER', 'EXCLUSIVE', 'FRACTION');--> statement-breakpoint
CREATE TYPE "public"."transport_type" AS ENUM('HATCHBACK', 'SEDAN', 'COUPE', 'LIFTBACK', 'UNIVERSAL', 'CROSSOVER', 'VAN', 'VNEDOROZNIK', 'MINIBUS', 'BUS', 'TYAGACH', 'TRUCK', 'PICKUP', 'CABRIOLET', 'MOTOCYCLE');--> statement-breakpoint
CREATE TYPE "public"."accessory_category" AS ENUM('HEADWEAR', 'ACCESSORY', 'BAG', 'CAR_ACCESSORY');--> statement-breakpoint
CREATE TYPE "public"."accessory_subtype" AS ENUM('CAP', 'HAT', 'HELMET', 'BUCKET_HAT', 'BEANIE', 'GLASSES', 'MASK', 'UMBRELLA', 'BACK_ACCESSORY', 'TENT', 'SPEAKER', 'HEADPHONES', 'GUITAR', 'BACKPACK', 'WAIST_BAG', 'GUITAR_CASE', 'CLUTCH', 'BRIEFCASE', 'TRAVEL_BAG', 'BAG', 'VINYL', 'RIMS', 'LICENSE_PLATE_FRAME');--> statement-breakpoint
CREATE TYPE "public"."currency" AS ENUM('PUMPKINS', 'BP_LEVEL', 'CASE', 'FLOWERS', 'VIRTS', 'MANDARINS');--> statement-breakpoint
CREATE TYPE "public"."announcement_type" AS ENUM('NEWS', 'UPDATE');--> statement-breakpoint
CREATE TYPE "public"."city" AS ENUM('PRIVOLZHSK', 'NEVSKY', 'MIRNY', 'VOLCHANSK', 'ZHUKOVSKIY');--> statement-breakpoint
CREATE TYPE "public"."auth_method" AS ENUM('CREDENTIALS', 'GOOGLE', 'YANDEX');--> statement-breakpoint
CREATE TYPE "public"."role" AS ENUM('USER', 'ADMIN', 'MODERATOR');--> statement-breakpoint
CREATE TABLE "transport" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "transport_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"name" text NOT NULL,
	"unique_name" text NOT NULL,
	"price" integer,
	"full_speed" integer,
	"speed_100_time" numeric,
	"speed_max_time" numeric,
	"volume_tank" integer,
	"fuel_type" "fuel_type",
	"slots" integer,
	"seats" integer,
	"lite_insurance" integer,
	"repair_without_ins" integer,
	"has_stand_ins" boolean DEFAULT false,
	"has_exc_ins" boolean DEFAULT false,
	"type_body" "transport_type",
	"showroom" "showroom",
	"drive_type" "drive_type",
	"epp" boolean,
	"city" "showroom_city",
	"country_origin" "country_origin",
	"stage_counter" integer,
	"paint_inter" text,
	"paint_first" text,
	"paint_second" text,
	"paint_third" text,
	"antichrome" boolean,
	"accessories" text,
	"rims" text,
	"gos_cost_old" integer[],
	"class" "transport_class",
	"units" integer
);
--> statement-breakpoint
CREATE TABLE "events" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "events_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"name" text NOT NULL,
	"start_date" timestamp,
	"end_date" timestamp
);
--> statement-breakpoint
CREATE TABLE "items" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "items_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"name" text NOT NULL,
	"category" "accessory_category" NOT NULL,
	"subtype" "accessory_subtype",
	"price" integer,
	"currency" "currency",
	"slots" integer,
	"event_id" integer
);
--> statement-breakpoint
CREATE TABLE "announcements" (
	"id" serial PRIMARY KEY NOT NULL,
	"title" text,
	"description" text,
	"type" "announcement_type",
	"date" timestamp
);
--> statement-breakpoint
CREATE TABLE "job_city_salaries" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "job_city_salaries_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"job_id" integer,
	"city" "city",
	"amount" integer,
	"time" numeric,
	"exp" numeric,
	"stops" integer
);
--> statement-breakpoint
CREATE TABLE "jobs" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "jobs_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"name" text,
	"lvl" integer,
	"about" text,
	"description" text
);
--> statement-breakpoint
CREATE TABLE "truck_salaries" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "truck_salaries_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"job_id" integer,
	"type_transport" text,
	"type_cargo" text,
	"type_semitrailer" text,
	"salary_private" integer,
	CONSTRAINT "truck_salaries_job_id_unique" UNIQUE("job_id")
);
--> statement-breakpoint
CREATE TABLE "users" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"name" text,
	"email" text,
	"password_hash" text,
	"role" "role" DEFAULT 'USER' NOT NULL,
	"auth_method" "auth_method" DEFAULT 'CREDENTIALS' NOT NULL,
	"is_blocked" boolean DEFAULT false NOT NULL,
	"is_verified" boolean DEFAULT false NOT NULL,
	"avatar_url" text,
	"created_at" timestamp DEFAULT now(),
	CONSTRAINT "users_email_unique" UNIQUE("email")
);
--> statement-breakpoint
CREATE TABLE "email_verifications" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"token" text,
	"user_id" uuid NOT NULL,
	"expires_at" timestamp
);
--> statement-breakpoint
ALTER TABLE "items" ADD CONSTRAINT "items_event_id_events_id_fk" FOREIGN KEY ("event_id") REFERENCES "public"."events"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "job_city_salaries" ADD CONSTRAINT "job_city_salaries_job_id_jobs_id_fk" FOREIGN KEY ("job_id") REFERENCES "public"."jobs"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "truck_salaries" ADD CONSTRAINT "truck_salaries_job_id_jobs_id_fk" FOREIGN KEY ("job_id") REFERENCES "public"."jobs"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "email_verifications" ADD CONSTRAINT "email_verifications_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;