CREATE TYPE "public"."token_type" AS ENUM('VERIFICATION', 'TWO_FACTOR', 'PASSWORD_RESET');--> statement-breakpoint
ALTER TABLE "email_verifications" RENAME TO "tokens";--> statement-breakpoint
ALTER TABLE "tokens" DROP CONSTRAINT "email_verifications_token_unique";--> statement-breakpoint
ALTER TABLE "tokens" DROP CONSTRAINT "email_verifications_user_id_users_id_fk";
--> statement-breakpoint
ALTER TABLE "tokens" ADD COLUMN "token_type" "token_type";--> statement-breakpoint
ALTER TABLE "tokens" ADD COLUMN "created_at" timestamp NOT NULL;--> statement-breakpoint
ALTER TABLE "tokens" ADD CONSTRAINT "tokens_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tokens" ADD CONSTRAINT "tokens_token_unique" UNIQUE("token");