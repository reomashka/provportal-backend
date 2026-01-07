ALTER TABLE "transport" ALTER COLUMN "customization" SET DEFAULT '{}'::json;--> statement-breakpoint
ALTER TABLE "transport" ALTER COLUMN "customization" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "paint_inter";--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "paint_first";--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "paint_second";--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "paint_third";--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "antichrome";--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "accessories";--> statement-breakpoint
ALTER TABLE "transport" DROP COLUMN "rims";